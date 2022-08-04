import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../../../layouts"

Drawer{
    id: control
    width: parent.width
    height: parent.height
    dim: true
    edge: Qt.RightEdge
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }

    background: Rectangle{
        color: Style.theme.windowBg

    }
}
