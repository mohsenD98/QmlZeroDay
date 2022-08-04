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
    edge: Qt.rightEdge
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }

    signal addContact(var contactName)

    background: Rectangle{
        color: Style.theme.windowBg

        AddConversationPage{
            id: conversation
            anchors.fill: parent
        }
    }
}
