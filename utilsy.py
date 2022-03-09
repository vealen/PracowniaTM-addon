

from PyQt5.QtWidgets import QAction, QMessageBox, QMenu
from qgis.PyQt.QtCore import QVariant, QUrl
from PyQt5.QtWebKitWidgets import QWebView
from qgis.core import *
from PyQt5.QtWidgets import QDialog, QApplication,QWidget,QProgressBar, QInputDialog,QLineEdit,QProgressDialog
import os
from qgis.utils import iface




def get_names(layer, fn1=None, fn2=None, fn3=None, fn4=None):
    field_names = layer.fields().names()
    zostaja = [fn1, fn2, fn3, fn4]
    l3 = [x for x in field_names if x not in zostaja]
    return l3



def resolve(name, basepath=None):
    if not basepath:
        basepath = os.path.dirname(os.path.abspath(__file__))
    return os.path.join(basepath, name)

def checklayers(layer1,layer2):
    if len(layer1) and len(layer2) != 0:
        return True
    else:
        return False

def help():
    # text, ok = QInputDialog.getText(iface.mainWindow(),'Test0',' TEST')
    # if ok:
    #essa = 'dupa'
    file = resolve('help.htm')
    # #rozdzielczosc uzytkownina
    # desktop = QApplication.desktop()
    # screenRect = desktop.screenGeometry()
    # height = screenRect.height()
    # width = screenRect.width()
    dlg = QDialog(iface.mainWindow())
    dlg.setFixedSize(800,600)
    dlg.show()
    dlg.setWindowTitle('POMOC')
    myWV = QWebView(dlg)
    myWV.load(QUrl.fromLocalFile(file))
    myWV.show()





