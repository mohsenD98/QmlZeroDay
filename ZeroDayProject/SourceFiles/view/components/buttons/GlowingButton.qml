import QtQuick 2.12
import QtGraphicalEffects 1.0

import Style 1.0

import "../../tools"

Item {
    width: rect.width
    height: rect.height

    property bool glowing: true
    property string title
    property color glowColor
    property color textColor: Style.theme.dialogsTextFgActive
    property color baseColor
    property real baseHeight: 35

    signal btnClicked

    Rectangle {
        id: background
        anchors.fill: parent
        color: "transparent"
    }

    RectangularGlow {
        id: effect
        anchors.fill: rect
        glowRadius: 2
        spread: 0.1
        visible: glowing
        color: glowColor
        cornerRadius: rect.radius + glowRadius
    }

    Rectangle {
        id: rect
        color:  baseColor
        border.color: mouse.containsMouse ? glowColor: baseColor
        border.width: mouse.containsMouse ? 1: 0
        opacity: 1
        anchors.centerIn: parent
        width: inpText.width * 1.8
        height: baseHeight
        radius: 1

        Text {
            id: inpText
            text: title
            wrapMode: Text.WordWrap
            color: textColor
            font.pixelSize: 10
            font.family: "Open Sans"
            anchors.centerIn: parent
        }

        MouseArea{
            id: mouse
            hoverEnabled: true
            anchors.fill: parent

            onClicked: btnClicked()
        }

        RippleLayout{
            anchors.fill: parent
            mouseArea: mouse
        }
    }

}
