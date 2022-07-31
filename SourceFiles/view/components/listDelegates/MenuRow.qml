import QtQuick 2.12

import Style 1.0

import "../../tools"

Rectangle {
    property string mText: ""
    property color backgroundColor: "#20000000"

    width: parent.width
    height: 35
    color: mouse.containsMouse? backgroundColor: "transparent"

    signal btnClicked

    opacity: enabled?1:.5

    Text {
        text: mText
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 16
        color: Style.theme.dialogsTextFgActive
        font.pixelSize: 12
        font.family: "Open Sans"
        font.bold: false
    }

    MouseArea{
        id: mouse
        anchors.fill: parent
        hoverEnabled: true

        onClicked: btnClicked()
    }

    RippleLayout{
        anchors.fill: parent
        mouseArea: mouse
    }


}
