import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt5Compat.GraphicalEffects
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

import Style 1.0

Drawer {
    id: control
    width: parent.width
    height: parent.height
    dim: true
    edge: Qt.BottomEdge
    modal: false
    dragMargin: 0
    closePolicy: Popup.CloseOnPressOutside

    property bool playing: false
    property color backgroundColor
    property color textColor

    Overlay.modeless: Rectangle {
        color: "#33000000"
    }

    background: Rectangle{
        color: "#242f3d"

        Rectangle{
            id: handel
            color: textColor
            opacity: .2
            radius: width
            width:  50
            height: 4
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 8
        }

        MusicList{
            anchors.top: handel.bottom
            anchors.bottom: musicController.top
            anchors.topMargin: 16
            anchors.right: parent.right
            frontColor: textColor
            anchors.left: parent.left
        }

        MusicController{
            id: musicController
            color: "#1f2936"
            frontColor: textColor
            width: parent.width
            height: 180
        }
    }
}
