import pyodbc
import os
from qgis.PyQt.QtCore import *
from qgis.core import *
import pandas as pd

SQL = {
    'WYDZ_KO1': """SELECT F_ARODES.ADRESS_FOREST, F_STOREY_SPECIES.STOREY_CD AS WAR, F_AROD_STOREY.STANDDENSITY_INDEX AS ZAD, F_STOREY_SPECIES.PART_CD AS UDZ, F_STOREY_SPECIES.SPECIES_CD, F_STOREY_SPECIES.SPECIES_AGE, F_STOREY_SPECIES.BHD, F_STOREY_SPECIES.HEIGHT
FROM F_ARODES INNER JOIN ((F_SUBAREA INNER JOIN F_AROD_STOREY ON F_SUBAREA.ARODES_INT_NUM = F_AROD_STOREY.ARODES_INT_NUM) INNER JOIN F_STOREY_SPECIES ON (F_AROD_STOREY.STOREY_CD = F_STOREY_SPECIES.STOREY_CD) AND (F_AROD_STOREY.ARODES_INT_NUM = F_STOREY_SPECIES.ARODES_INT_NUM)) ON F_ARODES.ARODES_INT_NUM = F_SUBAREA.ARODES_INT_NUM
WHERE (((F_STOREY_SPECIES.STOREY_CD) Like 'drzew' Or (F_STOREY_SPECIES.STOREY_CD)='IP') AND ((F_STOREY_SPECIES.SPECIES_RANK_ORDER) Like '1'))
ORDER BY F_ARODES.ADRESS_FOREST, F_AROD_STOREY.STOREY_RANK_ORDER, F_STOREY_SPECIES.STOREY_CD, F_STOREY_SPECIES.SPECIES_RANK_ORDER;
""",
    'WYDZ_KO2': """SELECT F_ARODES.ADRESS_FOREST, F_SUBAREA.AREA_TYPE_CD, F_SUBAREA.SUBAREA_INFO
FROM F_ARODES INNER JOIN F_SUBAREA ON F_ARODES.ARODES_INT_NUM = F_SUBAREA.ARODES_INT_NUM;
""",
    'multiply':'SQL'
}

def connect_db(db_path):
    odbc_drivers = [x for x in pyodbc.drivers() if x.startswith('Microsoft Access Driver')]
    print(odbc_drivers)
    try:
        driver = u"{Microsoft Access Driver (*.mdb, *.accdb)}"
        print('poszedł pierwszy')
    except:
        print('dłuższy driver nie zadziałał, lecimy dalej')
        driver = u"{Microsoft Access Driver (*.mdb)}"

    if os.path.exists(db_path):
        connected = True
        access_con_string = f"Driver={driver}; Dbq={db_path};"
        connection = pyodbc.connect(access_con_string)
        return connection, connected
    else:
        connected = False
        return 'Ścieżka nie istnieje', connected


def df_to_layer(df,lyr_name):
    temp_lyr = QgsVectorLayer('None',lyr_name,"memory")
    temp_data = temp_lyr.dataProvider()

    temp_lyr.startEditing()
    headlist = [head for head in df]

    types = [typex for typex in df.dtypes]
    fieldlist = []
    for type,head in zip(types,headlist):
        if type == 'object':
            fieldlist.append(QgsField(head,QVariant.String, len=25))
        if type in ['float64']:
            fieldlist.append(QgsField(head,QVariant.Double, len=25))
        if type =='int64':
            fieldlist.append(QgsField(head,QVariant.Int))


    temp_data.addAttributes(fieldlist)
    temp_lyr.updateFields()

    for i in df.index.to_list():
        fet = QgsFeature()
        newrow = df[headlist].iloc[i].tolist()
        converted = convert_dtype(newrow)

        fet.setAttributes(converted)
        temp_data.addFeatures([fet])
    feats  = temp_lyr.getFeatures()


    if lyr_name == '1WYDZ_KO':
        for feat in feats:
            attrs = feat.attributes()
            for attr in attrs:
                if str(attr).lower() == 'nan':
                    temp_lyr.changeAttributeValue(feat.id(), 6, None)
                    temp_lyr.changeAttributeValue(feat.id(), 7, None)

    temp_lyr.commitChanges()


    return temp_lyr
def get_table_data(conn, sql,):
    data = pd.read_sql(sql, conn)
    #data = data.astype(str)
    return data


def convert_dtype(data):
    """ function to convert pandas data types to native python type """

    def conversion(element):
        ## try and except are used because strings (in this context) behave differently
        ## to ints/floats and do not have a dtype attribute
        try:
            if element.dtype.name == 'int64':
                return int(element)
            elif element.dtype.name == 'float64':
                return float(element)
            else:
                return element
        except:
            return element

    return [conversion(x) for x in data]