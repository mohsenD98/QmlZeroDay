import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.12

import Style 1.0

import "../../tools"

Item {
    width: parent.width
    height: rect.height

    property bool glowing: false
    property string title
    property var labelsModel: []
    signal cardSelected

    MouseArea{
        anchors.fill: parent
        onClicked: {
            glowing = !glowing
            cardSelected()
        }
    }

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
        color: Style.theme.sideBarIconFgActive
        cornerRadius: rect.radius + glowRadius
    }

    Rectangle {
        id: rect
        color: "#2C3F51"
        border.color: Style.theme.sideBarIconFgActive
        border.width: glowing? 2: 0
        opacity: 1
        anchors.centerIn: parent
        width: parent.width - 12
        height: inpText.implicitHeight * 1.3 + labelsFlow.height + 10
        radius: 4

        RoundButton{
            id: options
            anchors.right: parent.right
            anchors.rightMargin: -8
            anchors.top: parent.top
            width: 35
            height: width
            icon.source: "qrc:/../icons/mediaview_more@3x.png"
            opacity: .5
            flat: true
        }

        Text {
            id: inpText
            text: title
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 8
            wrapMode: Text.WordWrap
            color: Style.theme.dialogsTextFgActive
            font.pixelSize: 12
            font.family: "Open Sans"
        }

        Flow{
            id: labelsFlow
            anchors.top: inpText.bottom
            anchors.topMargin: 16
            anchors.leftMargin: 8
            anchors.rightMargin: 8
            anchors.left: parent.left
            anchors.right: parent.right
            height: 45
            spacing: 8

            Repeater{
                model: labelsModel
                delegate: CardLabel{
                    title: modelData.title
                    labelColor: modelData.color
                }

            }
        }

        Text {
            id: dateText
            text: "2022-10-11 02:25"
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            wrapMode: Text.WordWrap
            color: Style.theme.dialogsTextFgActive
            font.pixelSize: 8
            opacity: .5
            font.family: "Open Sans"
        }

    }

}
