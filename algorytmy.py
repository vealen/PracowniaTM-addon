# -----------------------------------------------------------
# Copyright (C) Maj 2021 Piotr Fiodor
# -----------------------------------------------------------
# Zbiór narzędzi dla pracowni TM
# 21.05.2021 Dodano - WYDZ W ODDZ
# 11.10.2021 Dodano - Rozmnazanie wydzielen
# 15.11.2021 Dodano - Zgodnosc baza warstwa
# 17.11.2021 Dodano - Zadrzewienia
# 24.11.2021 Dodano - POMOC
# 24.11.2021 Dodano - WYDZ_KONTROLA
# 12.01.2022 Dodano - Klasa Ksero - kopiowanie warstw
# ---------------------------------------------------------------------

from PyQt5.QtWidgets import QAction, QMessageBox, QMenu
from qgis.PyQt.QtCore import QVariant, QUrl
from PyQt5.QtWebKitWidgets import QWebView
from qgis.core import *
from qgis import processing
from qgis.utils import iface
from PyQt5.QtWidgets import QDialog, QApplication, QWidget, QProgressBar, QInputDialog, QLineEdit, QProgressDialog, QFileDialog, QLabel, QSizePolicy, QPushButton
import os
import time
from PyQt5.QtGui import QPixmap
from .checker import *
from .utilsy import *
from .database_tools import *



class PracowniaTM_algorytmy():
    def __init__(self):
        print('hello jestem tu')

    def resolve(self, name, basepath=None):
        if not basepath:
            basepath = os.path.dirname(os.path.abspath(__file__))
        return os.path.join(basepath, name)

    def checklayers(self, layer1, layer2):
        if len(layer1) and len(layer2) != 0:
            return True
        else:
            return False

    def message(self,title,text,type):
        msg = QMessageBox()
        msg.setWindowTitle(title)
        msg.setText(text)
        #msg.setIcon(QMessageBox.Warning)
        msg.setIcon(type)
        msg.addButton(QMessageBox.Ok)
        msg.setWindowFlags(Qt.WindowStaysOnTopHint)
        dupa = msg.exec()

    def set_style(self, layer):
        layer = iface.activeLayer()
        Symbol = QgsFillSymbol.createSimple({'color': '#FF0000',
                                             'color_border': '#FF0000',
                                             'width_border': '1',
                                             'style': 'f_diagonal'})
        Renderer = layer.renderer()
        Renderer.setSymbol(Symbol)
        layer.triggerRepaint()

    def wydz_oddz(self,opodst,oddz):
        self.opodst_nazwa = 'O_PODST'
        self.oddz_nazwa = 'ODDZ'

        opodstStatus = False
        oddzStatus = False

        opodstName = opodst.name()
        oddzName = oddz.name()

        if opodstName.lower() in ['o_podst', 'o_podst.shp', 'wydz_tm', 'wydz_tm.shp']:
            opodstStatus = True
        else:
            self.message('WYDZ_ODDZ',f'Niepoprawna warstwa dla O_PODST, wybrano {opodstName}. Sprawdź poprawność',QMessageBox.Warning)
        if oddzName.lower() in ['oddz','oddz.shp']:
            oddzStatus = True
        else:
            self.message('WYDZ_ODDZ', f'Niepoprawna warstwa dla ODDZ, wybrano {oddzName}. Sprawdź poprawność',
                         QMessageBox.Warning)


        if opodstStatus==oddzStatus==True:
            EXPR1 = 'OBR || ODDZ'
            EXPR6 = 'if(\"ODDZ\" LIKE \'_\', \"OBR\" || \'0\' || \"ODDZ\", \"OBR\" || \"ODDZ\")'
            EXPR7 = '\"OBR_ODDZ_1\" NOT LIKE \"OBR_ODDZ_2\" AND \"OBR\" LIKE \"OBR_2\"'

            agregujopodst_params = {
                'INPUT': opodst,
                'FIELD': ['OBR', 'ODDZ', 'adr_for'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            agregujopodst = processing.run("native:dissolve", agregujopodst_params)
            # prov = opodst[0].dataProvider()
            # field_names = [field.name() for field in prov.fields()]
            #
            # for name in field_names:
            #     if name == 'OBR' or name == 'ODDZ' or name == 'adr_for':
            #         field_names.remove(name)
            usunpola_params = {
                # 'COLUMN': fields_name,
                'COLUMN': ['Id', 'WYDZ', 'UZ', 'LS', 'PARCEL_INT', 'SHAPE_INT', 'DEL', 'AAA', 'AA', 'POW', 'ADR_ADM',
                           'ADR_BDL', 'NR_EW', 'NR_KONT', 'wydz_new'],
                'INPUT': agregujopodst['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            usunpolaopodst = processing.run('qgis:deletecolumn', usunpola_params)
            dodajpoleopodst_params = {
                'FIELD_LENGHT': 6,
                'FIELD_NAME': 'OBR_ODDZ_1',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'INPUT': usunpolaopodst['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            dodajpoleopodst = processing.run('native:addfieldtoattributestable', dodajpoleopodst_params)
            kalkopodst_params = {
                'FIELD_LENGHT': 6,
                'FIELD_NAME': 'OBR_ODDZ_1',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'FORMULA': EXPR1,
                'INPUT': dodajpoleopodst['OUTPUT'],
                'OUTPUT': 'memory: OPODST_KONTR'
            }
            kalkopodst = processing.run('native:fieldcalculator', kalkopodst_params)
            # ODDZ
            cloneODDZ_params = {
                'INPUT': oddz,
                'OUTPUT': 'memory:oddzclone'
            }
            oddz.selectAll()
            cloneoddz = processing.run('native:saveselectedfeatures', cloneODDZ_params)
            cloneoddz['OUTPUT'].removeSelection()
            oddz.removeSelection()
            # prov2 = oddz[0].dataProvider()
            # field_names2 = [field.name() for field in prov2.fields()]
            #
            # for name in field_names2:
            #     if name == 'OBR' or name == 'ODDZ':
            #         field_names2.remove(name)
            #
            # usunpolaoddz_params = {
            #     'COLUMN': field_names2,
            #     'INPUT': cloneoddz['OUTPUT'],
            #     'OUTPUT': 'TEMPORARY_OUTPUT'
            # }
            # usunpolaoddz = processing.run('qgis:deletecolumn', usunpolaoddz_params)
            usunpolaoddz_params = {
                'COLUMN': ['Id', 'ADR_BDL'],
                'INPUT': cloneoddz['OUTPUT'],
                'OUTPUT': 'memory:ODDZ_KONTR'
            }
            usunpolaoddz = processing.run('qgis:deletecolumn', usunpolaoddz_params)
            dodajpoleoddz_params = {
                'FIELD_LENGHT': 6,
                'FIELD_NAME': 'OBR_ODDZ_2',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'INPUT': usunpolaoddz['OUTPUT'],  # UWAGA NIE USUNELO POL TYCH Z INSTRUKCJI ZROBI TO NA KONCU
                'OUTPUT': 'memory:dod'
            }
            dodajpoleoddz = processing.run('native:addfieldtoattributestable', dodajpoleoddz_params)
            dodajpoleoddz['OUTPUT'].removeSelection()
            kalkoddz_params = {
                'FIELD_LENGTH': 10,
                'FIELD_NAME': 'OBR_ODDZ_2',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'FORMULA': EXPR6,
                'INPUT': dodajpoleoddz['OUTPUT'],
                'OUTPUT': 'memory:kalkoddz'
            }
            kalkoddz = processing.run('native:fieldcalculator', kalkoddz_params)
            kalkoddz['OUTPUT'].removeSelection()
            # LACZYMY
            # iloczyn_params = {
            #     'A': kalkopodst['OUTPUT'],
            #     'B': usunpolaoddz['OUTPUT'],
            #     'SPLIT': True,
            #     'RESULT': 'TEMPORARY_OUTPUT'
            # }
            #
            # iloczyn_proces = processing.run('saga:intersect', iloczyn_params)
            #
            # iloczyn = QgsVectorLayer(iloczyn_proces['RESULT'], "ZLY_ODDZ", "ogr")
            # iloczyn.selectByExpression(EXPR7)
            # iloczyn.invertSelection()
            iloczynqgis_params = {
                'INPUT': kalkopodst['OUTPUT'],
                'INPUT_FIELDS': [''],
                'OVERLAY': kalkoddz['OUTPUT'],
                'OVERLAY_FIELDS': [''],
                'OVERLAY_FIELDS_PREFIX': '',
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            iloczynqgis = processing.run('native:intersection', iloczynqgis_params)
            iloczynqgis['OUTPUT'].removeSelection()
            iloczynqgis['OUTPUT'].selectByExpression(EXPR7)
            iloczynqgis['OUTPUT'].invertSelection()
            with edit(iloczynqgis['OUTPUT']):
                iloczynqgis['OUTPUT'].deleteSelectedFeatures()
            agregujiloczyn_params = {
                'FIELD': ['ODDZ', 'OBR', 'OBR_ODDZ_1', 'ODDZ_2', 'OBR_2', 'OBR_ODDZ_2'],
                'INPUT': iloczynqgis['OUTPUT'],
                'OUTPUT': 'memory:ZLY_ODDZ_ALGORYTM'
            }
            agregujiloczyn = processing.run('native:dissolve', agregujiloczyn_params)
            kalkoiloczyn_params = {
                'FIELD_LENGHT': 6,
                'FIELD_NAME': 'POW',
                'FIELD_PRECISION': 2,
                'FIELD_TYPE': 0,
                'FORMULA': '$area',
                'INPUT': agregujiloczyn['OUTPUT'],
                'OUTPUT': 'memory: ZLY_ODDZ'
            }
            kalkiloczyn = processing.run('native:fieldcalculator', kalkoiloczyn_params)
            QgsProject.instance().addMapLayer(kalkiloczyn['OUTPUT'])
            self.set_style(kalkiloczyn['OUTPUT'])
            iface.messageBar().pushMessage("Sukces", "Ukończono tworzenie warstwy ZLY_ODDZ", level=Qgis.Success,
                                           duration=5)

    def get_teryt(self, layr):
        for feature in layr.getFeatures():
            teryt = feature["adr_for"]
            if not (teryt != None):
                continue
            else:
                return teryt[0:6]
                break

    def get_names(self, layer):
        field_names = layer.fields().names()
        zostaja = ['adr_new', 'adr_for', 'ADR_NEW', 'ADR_FOR']
        l3 = [x for x in field_names if x not in zostaja]
        return l3

    def create_adr_new_easy(self,layer,teryt):

            expr = QgsExpression(
                f'CASE WHEN \"wydz_new\" like \'_\' THEN  \'{teryt}\'  ||  \"OBR\"  || \'-10\' ||  \"ODDZ\"  || \'  -\' ||  \"wydz_new\"  || \'   -00\' WHEN \"wydz_new\" like \'__\' THEN  \'{teryt}\'  ||  \"OBR\"  || \'-10\' ||  \"ODDZ\"  || \'  -\' ||  \"wydz_new\"  || \'  -00\' WHEN \"wydz_new\" like \'___\' THEN  \'{teryt}\' ||  \"OBR\"  || \'-10\' ||  \"ODDZ\"  || \'  -\' ||  \"wydz_new\"  || \' -00\' WHEN \"wydz_new\" like \'____\' THEN  \'{teryt}\'  ||  \"OBR\"  || \'-10\' ||  \"ODDZ\"  || \'  -\' ||  \"wydz_new\"  || \'-00\'END    ')
            pr = layer.dataProvider()
            adr_new_field = QgsField('adr_new', QVariant.String, "string", 25)
            pr.addAttributes([adr_new_field])
            layer.updateFields()
            idx = layer.fields().indexOf('adr_new')


            context = QgsExpressionContext()
            context.appendScopes(QgsExpressionContextUtils.globalProjectLayerScopes(layer))

            with edit(layer):
                for f in layer.getFeatures():
                    context.setFeature(f)
                    f['adr_new'] = expr.evaluate(context)
                    layer.updateFeature(f)

            selexpr = '\"adr_new\" is not NULL'
            layer.selectByExpression(selexpr)

            selected_params = {'INPUT': layer,
                               'OUTPUT': 'memory:selected'}

            selected = processing.run('native:saveselectedfeatures', selected_params)['OUTPUT']

            agregujiloczyn_params = {
                'FIELD': ['adr_new', 'adr_for'],
                'INPUT': selected,
                'OUTPUT': 'memory:adr_new'
            }
            adr_new = processing.run('native:dissolve', agregujiloczyn_params)['OUTPUT']

            usunpola_params = {
                'COLUMN': self.get_names(adr_new),
                'INPUT': adr_new,
                'OUTPUT': 'memory:adr_new'
            }
            self.adr_new_final = processing.run('qgis:deletecolumn', usunpola_params)['OUTPUT']
            QgsProject.instance().addMapLayer(self.adr_new_final)
            layer.removeSelection()

    def multiply(self,layer):
            features = layer.getFeatures()
            fields = next(features).fields()
            adrNewId = fields.indexOf('adr_new')
            if adrNewId >= 0:
                selexpr = '\"adr_new\" is not NULL'
                layer.selectByExpression(selexpr)
                if not layer.isEditable():
                    with edit(layer):
                        for f in layer.selectedFeatures():
                            f['adr_for'] = f['adr_new']
                            layer.updateFeature(f)
                else:
                    self.algorytmy.message('autoMP',
                                           'Warstwa w trybie edycji, wyłącz edycję, zamknij tabelę atrybutów i spróbuj ponownie\n'
                                           'Kliknij OK by zamknąć to okno', QMessageBox.Warning)
            else:
                print('no i czego tu szukasz? lepiej dodaj adr-new')

    def wydz_kontrola(self,layer,wydzko1,wydzko2):

        layerStatus = False
        wydzko1Status = False
        wydzko2Status = False
        expr1 = 'if(is_selected(),substr( \"1WYDZ_KO_ADRESS_FOR\" , \'14\', \'9\') || \"1WYDZ_KO_UDZ\" || \"1WYDZ_KO_SPECIES_CD\" || \"1WYDZ_KO_SPECIES_AG\" || \' | zd.\' || round ( \"1WYDZ_KO_ZAD\" ,2),NULL)'
        expr2 = 'if(is_selected(),substr( \"2WYDZ_KO_ADRESS_FOR\" , \'14\', \'9\') ||  \"2WYDZ_KO_AREA_TYPE_\" ,substr( \"1WYDZ_KO_ADRESS_FOR\" , \'14\', \'9\') || \"1WYDZ_KO_UDZ\" || \"1WYDZ_KO_SPECIES_CD\" || \"1WYDZ_KO_SPECIES_AG\" || \' | zd.\' || round ( \"1WYDZ_KO_ZAD\" ,2))'
        expr3 = '\"1WYDZ_KO_ADRESS_FOR\" IS NOT NULL'
        expr4 = '\"2WYDZ_KO_AREA_TYPE_\" NOT LIKE \'D-STAN\''
        layerName = layer.name()
        wydzko1Name = wydzko1.name()
        wydzko2Name = wydzko2.name()

        if layerName.lower() in ['o_podst', 'o_podst.shp', 'wydz_tm', 'wydz_tm.shp']:
            layerStatus = True
        else:
            self.message('WYDZ_KONTROLA',f'Niepoprawna warstwa dla O_PODST, wybrano {layerName}. Sprawdź poprawność',QMessageBox.Warning)
        if wydzko1Name.lower() in ['1wydz_ko','1wydz_ko.shp','wydz_ko1','wydz_ko1.shp']:
            wydzko1Status = True
        else:
            self.message('WYDZ_KONTROLA', f'Niepoprawna warstwa dla 1WYDZ_KO, wybrano {wydzko1Name}. Sprawdź poprawność',QMessageBox.Warning)
        if wydzko2Name.lower() in ['2wydz_ko','2wydz_ko.shp','wydz_ko2','wydz_ko2.shp']:
            wydzko2Status = True
        else:
            self.message('WYDZ_KONTROLA', f'Niepoprawna warstwa dla 2WYDZ_KO, wybrano {wydzko2Name}. Sprawdź poprawność',QMessageBox.Warning)

        if layerStatus==wydzko1Status==wydzko2Status==True:
            self.dialog, self.bar = self.progdialog(0)
            self.bar.setValue(0)
            self.bar.setMaximum(100)
            QApplication.processEvents()
            fb = QgsProcessingFeedback()  # CUSTOMOWY AKTUALIZATOR PROGRESS BARA -> connect progress_changed i dac feedack w f i aktualizuje self.bar
            fb.progressChanged.connect(self.progress_changed)  # jw
            agregujopodst = processing.run("native:dissolve",
                                           {'INPUT': layer,
                                            'FIELD': ['WYDZ', 'adr_for', 'ODDZ'], 'OUTPUT': 'TEMPORARY_OUTPUT'},
                                           feedback=fb)
            usunpola_params = {
                'COLUMN': ['fid', 'Id', 'UZ', 'LS', 'PARCEL_INT', 'SHAPE_INT', 'DEL', 'AAA', 'AA', 'POW',
                           'ADR_ADM', 'ADR_BDL', 'NR_EW', 'NR_KONT', 'wydz_new'],
                'INPUT': agregujopodst['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            usunpola = processing.run('qgis:deletecolumn', usunpola_params, feedback=fb)
            dodajpole_params = {
                'FIELD_LENGTH': 50,
                'FIELD_NAME': 'OT',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'INPUT': usunpola['OUTPUT'],
                'OUTPUT': 'memory:WYDZ_KONTROLA_BAZA'
            }
            dodajpole = processing.run('native:addfieldtoattributestable', dodajpole_params, feedback=fb)
            join1_params = {
                'DISCARD_NONMATCHING': False,
                'FIELD': 'adr_for',
                'FIELDS_TO_COPY': [''],
                'FIELD_2': 'ADRESS_FOR',
                'INPUT': dodajpole['OUTPUT'],
                'INPUT_2': wydzko1,
                'METHOD': 1,
                'PREFIX': '1WYDZ_KO_',
                'OUTPUT': 'memory:join1'
            }
            joinwydzko1 = processing.run('native:joinattributestable', join1_params, feedback=fb)
            joinwydzko1['OUTPUT'].removeSelection()
            joinwydzko1['OUTPUT'].selectByExpression(expr3)
            calc1_params = {
                'FIELD_LENGTH': 50,
                'FIELD_NAME': 'OT',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'FORMULA': expr1,
                'INPUT': joinwydzko1['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            calc1 = processing.run('native:fieldcalculator', calc1_params, feedback=fb)
            join2_params = {
                'DISCARD_NONMATCHING': False,
                'FIELD': 'adr_for',
                'FIELDS_TO_COPY': [''],
                'FIELD_2': 'ADRESS_FOR',
                'INPUT': calc1['OUTPUT'],
                'INPUT_2': wydzko2,
                'METHOD': 1,
                'PREFIX': '2WYDZ_KO_',
                'OUTPUT': 'memory:join2'
            }
            joinwydzko2 = processing.run('native:joinattributestable', join2_params, feedback=fb)
            joinwydzko2['OUTPUT'].removeSelection()
            joinwydzko2['OUTPUT'].selectByExpression(expr4)
            calc2_params = {
                'FIELD_LENGTH': 50,
                'FIELD_NAME': 'OT',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'FORMULA': expr2,
                'INPUT': joinwydzko2['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            calc2 = processing.run('native:fieldcalculator', calc2_params, feedback=fb)
            dc2_params = {
                'COLUMN': ['2WYDZ_KO_ADRESS_FOR', '2WYDZ_KO_AREA_TYPE_', '2WYDZ_KO_SUBAREA_IN', '1WYDZ_KO_WAR',
                           '1WYDZ_KO_ZAD', '1WYDZ_KO_UDZ', '1WYDZ_KO_SPECIES_CD', '1WYDZ_KO_SPECIES_AG',
                           '1WYDZ_KO_BHD', '1WYDZ_KO_HEIGHT', '1WYDZ_KO_ADRESS_FOR'],
                'INPUT': calc2['OUTPUT'],
                'OUTPUT': 'memory:WYDZ_KONTROLA'
            }
            disconnect2 = processing.run('qgis:deletecolumn', dc2_params, feedback=fb)
            QgsProject.instance().addMapLayer(disconnect2['OUTPUT'])
            self.dialog.close()
            iface.messageBar().pushMessage("Sukces", "Ukończono tworzenie warstwy WYDZ_KONTROLA. Ustawionono styl",
                                           level=Qgis.Success, duration=5)
    def wydz_kontrola(self,layer,wydzko1,wydzko2):
        layerStatus = True
        wydzko1Status = True
        wydzko2Status = True
        expr1 = 'if(is_selected(),substr( \"1WYDZ_KO_ADRESS_FOREST\" , \'14\', \'9\') || \"1WYDZ_KO_UDZ\" || \"1WYDZ_KO_SPECIES_CD\" || \"1WYDZ_KO_SPECIES_AGE\" || \' | zd.\' || round ( \"1WYDZ_KO_ZAD\" ,2),NULL)'
        expr2 = 'if(is_selected(),substr( \"2WYDZ_KO_ADRESS_FOREST\" , \'14\', \'9\') ||  \"2WYDZ_KO_AREA_TYPE_CD\" ,substr( \"1WYDZ_KO_ADRESS_FOREST\" , \'14\', \'9\') || \"1WYDZ_KO_UDZ\" || \"1WYDZ_KO_SPECIES_CD\" || \"1WYDZ_KO_SPECIES_AGE\" || \' | zd.\' || round ( \"1WYDZ_KO_ZAD\" ,2))'
        expr3 = '\"1WYDZ_KO_ADRESS_FOREST\" IS NOT NULL'
        expr4 = '\"2WYDZ_KO_AREA_TYPE_CD\" NOT LIKE \'D-STAN\''

        if layerStatus==wydzko1Status==wydzko2Status==True:
            self.dialog, self.bar = self.progdialog(0)
            self.bar.setValue(0)
            self.bar.setMaximum(100)
            QApplication.processEvents()
            fb = QgsProcessingFeedback()  # CUSTOMOWY AKTUALIZATOR PROGRESS BARA -> connect progress_changed i dac feedack w f i aktualizuje self.bar
            fb.progressChanged.connect(self.progress_changed)  # jw
            agregujopodst = processing.run("native:dissolve",
                                           {'INPUT': layer,
                                            'FIELD': ['WYDZ', 'adr_for', 'ODDZ'], 'OUTPUT': 'TEMPORARY_OUTPUT'},
                                           feedback=fb)
            usunpola_params = {
                'COLUMN': ['fid', 'Id', 'UZ', 'LS', 'PARCEL_INT', 'SHAPE_INT', 'DEL', 'AAA', 'AA', 'POW',
                           'ADR_ADM', 'ADR_BDL', 'NR_EW', 'NR_KONT', 'wydz_new'],
                'INPUT': agregujopodst['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            usunpola = processing.run('qgis:deletecolumn', usunpola_params, feedback=fb)
            dodajpole_params = {
                'FIELD_LENGTH': 50,
                'FIELD_NAME': 'OT',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'INPUT': usunpola['OUTPUT'],
                'OUTPUT': 'memory:WYDZ_KONTROLA_BAZA'
            }
            dodajpole = processing.run('native:addfieldtoattributestable', dodajpole_params, feedback=fb)
            join1_params = {
                'DISCARD_NONMATCHING': False,
                'FIELD': 'adr_for',
                'FIELDS_TO_COPY': [''],
                'FIELD_2': 'ADRESS_FOREST',
                'INPUT': dodajpole['OUTPUT'],
                'INPUT_2': wydzko1,
                'METHOD': 1,
                'PREFIX': '1WYDZ_KO_',
                'OUTPUT': 'memory:join1'
            }
            joinwydzko1 = processing.run('native:joinattributestable', join1_params, feedback=fb)
            joinwydzko1['OUTPUT'].removeSelection()
            joinwydzko1['OUTPUT'].selectByExpression(expr3)
            calc1_params = {
                'FIELD_LENGTH': 50,
                'FIELD_NAME': 'OT',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'FORMULA': expr1,
                'INPUT': joinwydzko1['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            calc1 = processing.run('native:fieldcalculator', calc1_params, feedback=fb)
            join2_params = {
                'DISCARD_NONMATCHING': False,
                'FIELD': 'adr_for',
                'FIELDS_TO_COPY': [''],
                'FIELD_2': 'ADRESS_FOREST',
                'INPUT': calc1['OUTPUT'],
                'INPUT_2': wydzko2,
                'METHOD': 1,
                'PREFIX': '2WYDZ_KO_',
                'OUTPUT': 'memory:join2'
            }
            joinwydzko2 = processing.run('native:joinattributestable', join2_params, feedback=fb)
            joinwydzko2['OUTPUT'].removeSelection()
            joinwydzko2['OUTPUT'].selectByExpression(expr4)
            calc2_params = {
                'FIELD_LENGTH': 50,
                'FIELD_NAME': 'OT',
                'FIELD_PRECISION': 0,
                'FIELD_TYPE': 2,
                'FORMULA': expr2,
                'INPUT': joinwydzko2['OUTPUT'],
                'OUTPUT': 'TEMPORARY_OUTPUT'
            }
            calc2 = processing.run('native:fieldcalculator', calc2_params, feedback=fb)
            dc2_params = {
               'COLUMN': ['2WYDZ_KO_ADRESS_FOREST', '2WYDZ_KO_AREA_TYPE_CD', '2WYDZ_KO_SUBAREA_INFO', '1WYDZ_KO_WAR',
                          '1WYDZ_KO_ZAD', '1WYDZ_KO_UDZ', '1WYDZ_KO_SPECIES_CD', '1WYDZ_KO_SPECIES_AGE',
                          '1WYDZ_KO_BHD', '1WYDZ_KO_HEIGHT', '1WYDZ_KO_ADRESS_FOREST'],
               'INPUT': calc2['OUTPUT'],
               'OUTPUT': 'memory:WYDZ_KONTROLA'
            }
            disconnect2 = processing.run('qgis:deletecolumn', dc2_params, feedback=fb)
            QgsProject.instance().addMapLayer(disconnect2['OUTPUT'])
            self.dialog.close()
            iface.messageBar().pushMessage("Sukces", "Ukończono tworzenie warstwy WYDZ_KONTROLA. Ustawionono styl",
                                           level=Qgis.Success, duration=5)

    def auto_mp(self,layer):
        # dodaje dialog i bar z funkcji progdialog, self bo chce zeby funkcja progress_changed miala dostep do bara
        layerName = layer.name()
        layerStatus = False
        if layerName.lower() in ['o_podst','o_podst.shp','wydz_tm','wydz_tm.shp']:
            layerStatus = True
        else:
            self.message('autoMP', 'To nie warstwa O_PODST/WYDZ_TM, sprawdź poprawność', QMessageBox.Warning)
        if layerStatus:
            self.dialog, self.bar = self.progdialog(0)
            self.bar.setValue(0)
            self.bar.setMaximum(100)
            QApplication.processEvents()
            fb = QgsProcessingFeedback()  # CUSTOMOWY AKTUALIZATOR PROGRESS BARA -> connect progress_changed i dac feedack w f i aktualizuje self.bar
            fb.progressChanged.connect(self.progress_changed)  # jw
            startTime = time.time()
            wydzNewId = layer.fields().indexOf('wydz_new')
            if wydzNewId >=0:
                field1_opts = {'aggregate': 'concatenate_unique', 'delimiter': ',', 'input': '"adr_for"', 'length': 25,
                               'name': 'adr_for', 'precision': 0, 'type': 10}
                field2_opts = {'aggregate': 'concatenate_unique', 'delimiter': ',', 'input': '"wydz_new"', 'length': 25,
                               'name': 'wydz_new', 'precision': 0, 'type': 10}
                aggre_params = {
                    'AGGREGATES': [field1_opts],
                    'GROUP_BY': '"adr_for"',
                    'INPUT': layer,
                    'OUTPUT': 'memory:aggre'
                }

                aggregowane = processing.run('native:aggregate', aggre_params, feedback=fb)['OUTPUT']

                sele = '\"wydz_new\" is not Null'
                aggregowane.selectByExpression(sele)
                with edit(aggregowane):
                    for f in aggregowane.selectedFeatures():
                        aggregowane.deleteFeature(f.id())
                        aggregowane.updateFeature(f)
            else:
                field1_opts = {'aggregate': 'concatenate_unique', 'delimiter': ',', 'input': '"adr_for"', 'length': 25,
                               'name': 'adr_for', 'precision': 0, 'type': 10}
                aggre_params = {
                    'AGGREGATES': [field1_opts],
                    'GROUP_BY': '"adr_for"',
                    'INPUT': layer,
                    'OUTPUT': 'memory:aggre'
                }

                aggregowane = processing.run('native:aggregate', aggre_params, feedback=fb)['OUTPUT']

            multipart_params = {
                'INPUT': aggregowane,
                'OUTPUT': 'memory:multipart'
            }
            singleparted = processing.run('native:multiparttosingleparts', multipart_params, feedback=fb)['OUTPUT']
            pr = singleparted.dataProvider()
            mpField = QgsField('mp', QVariant.Int, 'int')
            pr.addAttributes([mpField])
            count = singleparted.featureCount()
            with edit(singleparted):
                for i, f in enumerate(singleparted.getFeatures()):
                    f['mp'] = 1
                    singleparted.updateFeature(f)
                    progress = i / float(count) * 100
                    self.bar.setValue(progress)
                    QApplication.processEvents()
            field1 = {'aggregate': 'concatenate_unique', 'delimiter': ',', 'input': '"adr_for"', 'length': 0,
                      'name': 'adr_for', 'precision': 0, 'type': 10}
            field2 = {'aggregate': 'sum', 'delimiter': ',', 'input': '"mp"', 'length': 10, 'name': 'mp', 'precision': 3,
                      'type': 2}
            aggre2_params = {
                'AGGREGATES': [field1, field2],
                'GROUP_BY': '\"adr_for\"',
                'INPUT': singleparted,
                'OUTPUT': 'memory:mp'
            }
            mp = processing.run('qgis:aggregate', aggre2_params, feedback=fb)['OUTPUT']
            self.dialog.close()  # zamknnij okno progresu
            QgsProject.instance().addMapLayer(mp)
            print("--- %s seconds ---" % (time.time() - startTime))
    def zadrzew(self):
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
            # print(idx)

            enklawaField = QgsField('Enklawa', QVariant.String, '', 3)
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
                    fid['Enklawa'] = 'NIE'
                    zdrzw.updateFeature(fid)
            zdrzw.invertSelection()

            with edit(zdrzw):
                for fid in zdrzw.selectedFeatures():
                    fid['Enklawa'] = 'Tak'
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

    def progdialog(self, progress):  # okienko do progressu obliczen
        dialog = QProgressDialog()
        dialog.setWindowTitle("Przeliczam...")
        dialog.setLabelText("Aktualizuję...")
        bar = QProgressBar(dialog)
        bar.setTextVisible(True)
        bar.setValue(progress)
        dialog.setBar(bar)
        dialog.setMinimumWidth(300)
        dialog.show()
        return dialog, bar

    def progress_changed(self, progress):  # aktualizuje progress dla algorytmow professingu
        self.bar.setValue(progress)

    def help(self,parent):
        # text, ok = QInputDialog.getText(iface.mainWindow(),'Test0',' TEST')
        # if ok:
        # essa = 'dupa'
        file = self.resolve('help.htm')
        # #rozdzielczosc uzytkownina
        # desktop = QApplication.desktop()
        # screenRect = desktop.screenGeometry()
        # height = screenRect.height()
        # width = screenRect.width()
        dlg = QDialog(iface.mainWindow())
        dlg.setFixedSize(800, 600)
        dlg.setWindowTitle('POMOC')
        dlg.show()
        myWV = QWebView(dlg)
        myWV.load(QUrl.fromLocalFile(file))
        myWV.show()
        parent.close()

    def help_img(self,parent):
        file  = self.resolve('help_img_low.jpg')
        #rozdzielczosc uzytkownina
        desktop = QApplication.desktop()
        screenRect = desktop.screenGeometry()
        height = screenRect.height()
        width = screenRect.width()
        dialog = QDialog(iface.mainWindow())
        dialog.setMinimumSize(1281,694)
        dialog.setMaximumSize(width/2,height/2)
        lbl = QLabel(dialog)
        pxmap = QPixmap(file)
        lbl.setPixmap(pxmap)
        #parent.setWindowState(Qt.WindowMinimized)
        parent.showMinimized()
        dialog.exec_()

        if not dialog.isVisible():
            parent.showNormal()

    def help_img2(self,parent):
        file  = self.resolve('b10.jpg')
        file2 = self.resolve('b11.jpg')
        file3 = self.resolve('b111.jpg')
        #rozdzielczosc uzytkownina

        desktop = QApplication.desktop()
        screenRect = desktop.screenGeometry()
        height = screenRect.height()
        width = screenRect.width()
        dialog = QDialog(iface.mainWindow())
        dialog.setGeometry(0,0,420,602)
        #dialog.setMinimumSize(420,602)
        #dialog.setMaximumSize(width/2,height/2)
        lbl = QLabel(dialog)
        lbl2 = QLabel(dialog)
        lbl3=QLabel(dialog)
        pxmap = QPixmap(file)
        pxmap2 =QPixmap(file2)
        pxmap3=QPixmap(file3)
        lbl.setPixmap(pxmap)




        #parent.setWindowState(Qt.WindowMinimized)
        butt = QPushButton('SŁABE,ZAMKNIJ TO',dialog)
        butt.setGeometry(200,0,150,30)


        butt.clicked.connect(lambda: lbl2.setPixmap(pxmap2))
        butt.clicked.connect(lambda: dialog.setMinimumSize(960,560))
        butt.clicked.connect(lambda: lbl2.setGeometry(0,0,960,576))
        butt.clicked.connect(lambda:butt.setText('SERIO'))


        dialog.exec_()
        if not dialog.isVisible():
            parent.close()




class Ksero():
    def __init__(self,dialog):
        print('hello, jestem tutaj - to ja kserokopiarka')
        self.dialog = dialog
    def get_path(self):
        path  = QFileDialog.getExistingDirectory(self.dialog,'TESTO')
        self.dialog.folderLine.setText(path)
