from PyQt5.QtWidgets import QAction, QMessageBox, QMenu, QCheckBox
from PyQt5.QtCore import *
from qgis.PyQt.QtCore import QVariant
from qgis.core import *
from qgis import processing
from qgis.utils import iface


def get_names(layer, fn1=None, fn2=None, fn3=None, fn4=None):
    field_names = layer.fields().names()
    zostaja = [fn1, fn2, fn3, fn4]
    l3 = [x for x in field_names if x not in zostaja]
    return l3


def zadrzew():
    wydz_kontr = QgsProject.instance().mapLayersByName('WYDZ_KONTROLA')
    odleglosc = 30  # w metrach
    if len(wydz_kontr) != 0:
        layer = wydz_kontr[0]
        expr = 'OT like \'%ZADRZEW%\''
        d = QgsDistanceArea()  # klasa do pomiaru poiwrzchni
        d.setEllipsoid('ETRF2000-PL / CS92')  # uklad w metrach

        layer.selectByExpression(expr)
        select_params = {'INPUT': layer,
                         'OUTPUT': 'memory:selected'}
        selected = processing.run('native:saveselectedfeatures', select_params)['OUTPUT']
        usunpola_params = {
            'COLUMN': get_names(layer, 'adr_for', 'OT'),
            'INPUT': selected,
            'OUTPUT': 'memory:zadrzew'
        }
        zdrzw = processing.run('qgis:deletecolumn', usunpola_params)['OUTPUT']
        QgsProject.instance().addMapLayer(zdrzw)

        extract_params = {
            'DISTANCE': odleglosc,
            'INPUT': layer,
            'REFERENCE': zdrzw,
            'OUTPUT': 'memory:extracted'
        }
        extracted = processing.run('native:extractwithindistance', extract_params)['OUTPUT']
        # usun powierzchnie nielesne w oddaleniu 50 m od zadrzerwien
        extractedDpr = extracted.dataProvider()
        for feat in extracted.getFeatures():
            if len(feat['OT']) < 20 and feat['OT'].find("HAL") < 0 and feat['OT'].find("PŁAZ") < 0:
                extractedDpr.deleteFeatures([feat.id()])
        # QgsProject.instance().addMapLayer(extracted)

        selectDistParams = {
            'DISTANCE': odleglosc,
            'INPUT': zdrzw,
            'METHOD': 0,  # utworzenie nowej selekcji
            'REFERENCE': extracted
        }
        zaznacz_w_odleglosci_50m = processing.run('native:selectwithindistance', selectDistParams)['OUTPUT']

        context = QgsExpressionContext()
        context.appendScopes(QgsExpressionContextUtils.globalProjectLayerScopes(zdrzw))
        pr = zdrzw.dataProvider()
        pow_field = QgsField('pow', QVariant.String, '', 8)
        pr.addAttributes([pow_field])
        zdrzw.updateFields()
        idx = zdrzw.fields().indexOf('pow')
        #print(idx)

        enklawaField = QgsField('Enklawa',QVariant.String,'',3)
        pr.addAttributes([enklawaField])
        zdrzw.updateFields

        with edit(zdrzw):
            for f in zdrzw.getFeatures():
                context.setFeature(f)
                geo = f.geometry()  # geometria kazdego
                area_ha = round(d.measureArea(geo) / 10000,
                                2)  # obliczenia powierzchni + zmiana jednostki z m2 na ha i zaokraglenie
                f['pow'] = f'{area_ha} ha'
                zdrzw.updateFeature(f)

        with edit(zdrzw):
            for fid in zdrzw.selectedFeatures():
                fid['Enklawa']  = 'NIE'
                zdrzw.updateFeature(fid)
        zdrzw.invertSelection()

        with edit(zdrzw):
            for fid in zdrzw.selectedFeatures():
                fid['Enklawa']  = 'Tak'
                zdrzw.updateFeature(fid)
        zdrzw.removeSelection()
    else:
        msg = QMessageBox()
        msg.setWindowTitle('Kontrola ZADRZEW')
        msg.setText('Nie widzę w projekcie odpowiednich warstw \n'
                    '\n'
                    'Dodaj następujące warstwy : \n'
                    f'         WYDZ_KONTROLA.shp  \n'
                    'i uruchom algorytm ponownie\n\n'
                    'UWAGA Wielkość liter jest brana pod uwagę!\n'

                    'Kliknij OK by zamknąć to okno')
        msg.setIcon(QMessageBox.Information)
        msg.addButton(QMessageBox.Ok)
        dupa = msg.exec()


def sukces():
    layer = iface.activeLayer()
    expr = "OT like \'%LOTNISKO%\'"
    layer.selectByExpression(expr)
    select_params = {'INPUT': layer,
                     'OUTPUT': 'memory:sukcesja'}
    selected = processing.run('native:saveselectedfeatures', select_params)['OUTPUT']
    usunpola_params = {
        'COLUMN': get_names(layer, 'adr_for', 'OT'),
        'INPUT': selected,
        'OUTPUT': 'memory:sukcesja'
    }
    sukcesja = processing.run('qgis:deletecolumn', usunpola_params)['OUTPUT']
    QgsProject.instance().addMapLayer(sukcesja)


def check(typ):
    layer = iface.activeLayer()
    expr = f"OT like \'%{typ}%\'"
    layer.selectByExpression(expr)
    select_params = {'INPUT': layer,
                     'OUTPUT': 'memory:check'}
    selected = processing.run('native:saveselectedfeatures', select_params)['OUTPUT']
    usunpola_params = {
        'COLUMN': get_names(layer, 'adr_for', 'OT'),
        'INPUT': selected,
        'OUTPUT': 'memory:check'
    }
    typ = processing.run('qgis:deletecolumn', usunpola_params)['OUTPUT']
    QgsProject.instance().addMapLayer(typ)


def show_help():
    msg = QMessageBox()
    msg.setWindowTitle('POMOCY')
    checkBox = QCheckBox('Essa')
    msg.setCheckBox(checkBox)

    x = msg.exec()
    if checkBox.isChecked():
        print('jest')
    else:
        print("niema")


def compare_lists(l1, l2):
    dif = []
    for i in l1:
        if i not in l2:
            dif.append(i)
    return dif


def fcolumn_to_list(l_name1, columnname):
    layer = QgsProject.instance().mapLayersByName(l_name1)[0]
    list = []
    for feat in layer.getFeatures():
        list.append(feat[columnname])
    return list


def pnsw():
    nazwa_warstwy_ostateczenej = "Kontrola_PNSW"
    pnsw_nazwa = 'PNSW'
    o_podst_nazwa = 'O_PODST'
    pnsw_baza_nazwa = 'PNSW_B'

    pnsw = QgsProject.instance().mapLayersByName(pnsw_nazwa)
    o_podst = QgsProject.instance().mapLayersByName(o_podst_nazwa)
    pnsw_baza = QgsProject.instance().mapLayersByName(pnsw_baza_nazwa)
    if len(pnsw) and len(pnsw_baza) and len(o_podst) != 0:
        # zdobycie ADR_FOR DLA KAZDEGO PNSW
        inter_params = {
            'INPUT': o_podst[0],
            'INPUT_FIELDS': ['adr_for'],
            'OVERLAY': pnsw[0],
            'OVERLAY_FIELDS': [''],
            'OVERLAY_FIELDS_PREFIX': '',
            'OUTPUT': 'memory:intersect'
        }
        inter = processing.run('native:intersection', inter_params)['OUTPUT']
        # DISSOLVE PO ADR_FOR I NR PNSW ZEBY BYLY UNIKALNE Z ROZDZIELENIEM NA ADRFOR I NR PNSW
        diss_params = {
            'FIELD': ['adr_for', 'NR_PNSW'],
            'INPUT': inter,
            'OUTPUT': 'memory:diss'
        }

        dissolved = processing.run('native:dissolve', diss_params)['OUTPUT']
        # ZLACZENIE PO ADR FOR PNSW I ZDISSOLOWANEGO

        join_params = {
            'DISCARD_NONMATCHING': False,
            'FIELD': 'adr_for',
            'FIELDS_TO_COPY': [''],
            'FIELD_2': 'adress_for',
            'INPUT': dissolved,
            'INPUT_2': pnsw_baza[0],
            'METHOD': 0,
            'PREFIX': 'b_',
            'OUTPUT': f'memory:{nazwa_warstwy_ostateczenej}'
        }

        joined_ex = processing.run('native:joinattributestable', join_params)['OUTPUT']

        dup_params = {
            'INPUT':joined_ex,
            'OUTPUT':f'memory:{nazwa_warstwy_ostateczenej}'
        }
        joined = processing.run('native:deleteduplicategeometries', dup_params)['OUTPUT']
        joined.selectAll()
        clone_layer = processing.run("native:saveselectedfeatures", {'INPUT': joined, 'OUTPUT': 'memory:'})['OUTPUT']
        joined.removeSelection()
        QgsProject.instance().addMapLayer(clone_layer)

        QgsProject.instance().addMapLayer(joined)

        # LOGIKA DLA SPRAWDZENIA CZY ZGADZA SIE WARSTWA DO BAZY -> KLUCZOWE JEST expr
        pr = joined.dataProvider()

        field1 = QgsField('JEST NA WARSTWIE NIE MA W BAZIE', QVariant.String, 'string', 25)
        pr.addAttributes([field1])
        joined.updateFields()
        expr = QgsExpression('if((b_ADRESS_FOR is null),adr_for,Null)')

        context = QgsExpressionContext()
        context.appendScopes(QgsExpressionContextUtils.globalProjectLayerScopes(joined))

        with edit(joined):
            for f in joined.getFeatures():
                context.setFeature(f)
                f['JEST NA WARSTWIE NIE MA W BAZIE'] = expr.evaluate(context)
                joined.updateFeature(f)

        # LOGIKA DO SPRAWDZENIA ZGODNOSCI BAZA-WARSTWA - OPARTE NA ROZNICY W LISCIE ADRESOW Z BAZY I WARSTWY
        field2 = QgsField('JEST W BAZIE NIE MA NA WARSTWIE', QVariant.String, 'string', 25)
        pr.addAttributes([field2])
        joined.updateFields()

        # FUNKCJE DO ZROBIENIA LISTY z ADRESOW
        baz_l = fcolumn_to_list(pnsw_baza_nazwa, 'ADRESS_FOR')
        war_l = fcolumn_to_list(nazwa_warstwy_ostateczenej, 'adr_for')
        # FUNKCJA DO SPRAWDZENIA CO SIE NIE ZGADZA
        diff = compare_lists(baz_l, war_l)
        # DODANIE NOWYCH OBIEKTOW (BEZ INDEKSU PRZESTRZENNEGO) DO WARSTWY
        ft = QgsFeature(joined.fields())
        idx = joined.fields().indexOf('JEST W BAZIE NIE MA NA WARSTWIE')
        for i in diff:
            ft.setAttribute(idx, i)
            pr.addFeature(ft)
        joined.updateFields()

        # USUWANIE NIEPOTRZEBNYCH KOLUMN Z TABELI ATRYBUTOW
        f_ids = []
        zostaja = ['JEST NA WARSTWIE NIE MA W BAZIE', 'JEST W BAZIE NIE MA NA WARSTWIE']
        for f in joined.fields():
            if f.name() not in zostaja:
                f_ids.append(joined.fields().indexFromName(f.name()))
        joined.dataProvider().deleteAttributes(f_ids)
        joined.updateFields()

        war1 = fcolumn_to_list(nazwa_warstwy_ostateczenej, 'JEST NA WARSTWIE NIE MA W BAZIE')
        war2 = fcolumn_to_list(nazwa_warstwy_ostateczenej, 'JEST W BAZIE NIE MA NA WARSTWIE')
        # if len(diff) == len(fcolumn_to_list('joined','JEST NA WARSTWIE NIE MA W BAZIE')):
        #     iface.messageBar().pushMessage("Sukces", "Ukończono tworzenie warstwy ZLY_ODDZ", level=Qgis.Success, duration=5)
        print(war1)
        print(war2)
        print(len(war1))
        print(len(war2))
    else:
        msg = QMessageBox()
        msg.setWindowTitle('Kontrola PNSW')
        msg.setText('Nie widzę w projekcie odpowiednich warstw \n'
                    '\n'
                    'Dodaj następujące warstwy : \n'

                    f'         {pnsw_nazwa}.shp, {pnsw_baza_nazwa}.dbf   oraz {o_podst_nazwa}.shp  \n'

                    'i uruchom algorytm ponownie\n\n'
                    'UWAGA Wielkość liter jest brana pod uwagę!\n'
                    'Jeśli pracujesz na warstwie WYDZ_TM zmień jej nazwę na O_PODST\n'
                    f'Plik {pnsw_baza_nazwa}.dbf przygotuj w Access z użyciem tabeli F_AROD_SPEC_AREA \n'
                    'Kliknij OK by zamknąć to okno')
        msg.setIcon(QMessageBox.Information)
        msg.addButton(QMessageBox.Ok)
        # msg.addButton('TESCIOR', QMessageBox.YesRole)
        msg.setInformativeText(
            f"W więcej szczegółów polecenie SQL, które pozwoli utworzyć tabelę {pnsw_baza_nazwa}.dbf w Access ")
        msg.setDetailedText(
            'W Access wybierz  Tworzenie -> Projekt Kwerendy. Przejdź do widoku SQL (skrót klawiszowy: kolejno ALT G 7 Q). Wklej polecenie SQL i uruchom kwerendę (ALT JQ R):\n\n'
            "SELECT F_ARODES.ADRESS_FOREST, F_AROD_SPEC_AREA.SPECIAL_AREA_CD INTO PNSW_B FROM F_ARODES INNER JOIN F_AROD_SPEC_AREA ON F_ARODES.ARODES_INT_NUM = F_AROD_SPEC_AREA.ARODES_INT_NUM;\n")

        dupa = msg.exec()
        # JAK DODAC REAKCJE DO ODPOWIEDNICH PRZYCISKOW
        if dupa == QMessageBox.Ok:
            print('GITUWA')
        else:
            print('essa')


