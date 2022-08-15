import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../../../tools"

Rectangle{
    width: parent.width
    color: "transparent"
    height: 35

    property color mColor
    property string mText
    property bool lblIsSelected
    property bool addingLbl: false
    signal lblSelected

    RoundButton{
        id: lblAdded
        icon.source: "qrc:/icons/passport_ready@3x.png"
        anchors.verticalCenter: parent.verticalCenter
        visible: lblIsSelected
        flat: true
        width: 40
        height: 40
        opacity: .5
    }

    Rectangle{
        id: lblColor
        anchors.left:  lblAdded.right
        anchors.leftMargin: 0
        width: parent.height - 15
        height: width
        radius: 4
        color: mColor
        anchors.verticalCenter: parent.verticalCenter
        border.width: addingLbl ? 2: 0
        border.color: addingLbl ? Style.theme.sideBarIconFgActive: "transparent"
    }

    Text {
        text:mText
        anchors.left: lblColor.right
        anchors.margins: 16
        font.pixelSize: 10
        color: Style.theme.sideBarTextFg
        font.family: "Open Sans"
        anchors.verticalCenter: parent.verticalCenter
    }

    MouseArea{
        id: mouse
        anchors.fill: parent
        onClicked: {
            lblSelected()
        }
    }

    RippleLayout{
        mouseArea: mouse
        anchors.fill: parent
    }
}
