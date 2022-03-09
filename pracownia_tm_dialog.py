# -*- coding: utf-8 -*-
"""
/***************************************************************************
 AutoProjektDialog https://github.com/vealen/PracowniaTM.git
                                 A QGIS plugin
 Auto Projekt pracowniaTM
 Generated by Plugin Builder: http://g-sherman.github.io/Qgis-Plugin-Builder/
                             -------------------
        begin                : 2021-11-25
        git sha              : $Format:%H$
        copyright            : (C) 2021 by Piotr Fiodor
        email                : pfiodor@taxusul.com.pl
 ***************************************************************************/


 ***************************************************************************/
"""

import os

from qgis.PyQt import uic
from qgis.PyQt import QtWidgets

# This loads your .ui file so that PyQt can populate your plugin with the elements from Qt Designer
FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'pracownia_tm_dialog_base.ui'))


class PracowniaTmDialog(QtWidgets.QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        super(PracowniaTmDialog, self).__init__(parent)
        # Set up the user interface from Designer through FORM_CLASS.
        # After self.setupUi() you can access any designer object by doing
        # self.<objectname>, and you can use autoconnect slots - see
        # http://qt-project.org/doc/qt-4.8/designer-using-a-ui-file.html
        # #widgets-and-dialogs-with-auto-connect
        self.setupUi(self)