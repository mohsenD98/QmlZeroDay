import QtQuick 2.12

import QtGraphicalEffects 1.0

import Style 1.0

Rectangle {
    id: root
    radius: 4
    color: Style.theme.titleBgActive
    clip: true

    property string  title
    property string  lbl1
    property string  lbl1Optins
    property string  lbl2
    property string  lbl2Options
    property color imageBaseColor
    property string icon

    Rectangle{
        id: imageSection
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: height * 1.5
        radius: 4
        color: imageBaseColor

        Image{
            anchors.centerIn: parent
            source: icon
            opacity: .2

            ColorOverlay{
                anchors.fill: parent
                source: parent
                color: imageBaseColor
            }
        }
    }

    Rectangle{
        anchors.left: imageSection.right
        anchors.leftMargin: 16
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.rightMargin: 8
        color: "transparent"

        Text {
            id: namelbl
            text: title
            anchors.top: parent.top
            anchors.topMargin: 8
            font.bold: true
            color: Style.theme.dialogsTextFgActive
            font.pixelSize: 12
            font.family: "Open Sans"
        }
        Row{
            id: info1
            anchors.top: namelbl.bottom
            anchors.topMargin: 10
            Text {
                text: lbl1
                color: imageBaseColor
                font.pixelSize: 10
                opacity: 1
                font.family: "Open Sans"
            }
            Text {
                text: lbl1Optins
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 10
                font.family: "Open Sans"
            }
        }

        Row{
            anchors.top: info1.bottom
            anchors.topMargin: 4
            Text {
                text: lbl2
                color: imageBaseColor
                font.pixelSize: 10
                opacity: 1
                font.family: "Open Sans"
            }
            Text {
                text: lbl2Options
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 10
                font.family: "Open Sans"
            }
        }
    }
}
