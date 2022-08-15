import QtQuick 2.12
import Qt5Compat.GraphicalEffects

import Style 1.0

import "../../../tools"

Item {
    width: rect.width
    height: rect.height

    property bool glowing: true
    property string title
    property color labelColor

    Rectangle {
        id: background
        anchors.fill: parent
        color: "transparent"
    }

    RectangularGlow {
        id: effect
        anchors.fill: rect
        glowRadius: 2
        spread: 0.2
        visible: glowing
        color: labelColor
        cornerRadius: rect.radius + glowRadius
    }

    Rectangle {
        id: rect
        color: labelColor
        border.color: labelColor
        border.width: glowing? 2: 0
        opacity: 1
        anchors.centerIn: parent
        width: inpText.width * 1.3
        height: inpText.implicitHeight * 1.3
        radius: 2

        Text {
            id: inpText
            text: title
            wrapMode: Text.WordWrap
            color: Style.theme.dialogsTextFgActive
            font.pixelSize: 10
            font.family: "Open Sans"
            anchors.centerIn: parent
        }
    }

}
