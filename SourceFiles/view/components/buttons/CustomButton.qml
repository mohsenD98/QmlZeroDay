import QtQuick 2.12

import "../../tools"

Rectangle{
    property string title
    property color textColor
    signal btnClicked

    width: btnText.width * 1.4
    height: btnText.height * 1.3

    Text {
        id: btnText
        text: title
        anchors.centerIn: parent
        color: textColor
        font.pixelSize: 12
        font.family: "Open Sans"
    }

    MouseArea{
        id: mouse
        anchors.fill: parent
        onClicked: btnClicked()
    }

    RippleLayout{
        mouseArea: mouse
        anchors.fill: parent
        mRadius: parent.radius
    }
}

