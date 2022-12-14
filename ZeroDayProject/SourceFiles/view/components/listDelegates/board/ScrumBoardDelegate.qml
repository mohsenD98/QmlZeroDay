import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt5Compat.GraphicalEffects

import Style 1.0

import "../../../tools"
import "../../menu/board"

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
    property string iconPath

    signal selected
    signal duplicateRequested
    signal deleteRequested

    ScrumBoardDelegateOptions{
        id: scrumBoardDelegateOptions
        anchors.centerIn: parent

        onDeleteClicked: {
            deleteRequested()
        }

        onDuplicateClicked: {
            duplicateRequested()
        }

    }

    Rectangle{
        id: imageSection
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        width: height * 1.5
        radius: 4
        color: imageBaseColor

        RoundButton{
            id: scrumLogo
            anchors.centerIn: parent
            icon.source: iconPath
            flat: true
            smooth: true
            width: parent.height
            height: parent.height
            icon.width: parent.width
            icon.height: parent.height
            icon.color: "#55ffffff"
        }

        Rectangle{
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            width: 8
            color: parent.color

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
            color: Style.theme.historyTextOutFg
            font.pixelSize: 14
            font.family: "Open Sans"
        }
        Row{
            id: info1
            anchors.top: namelbl.bottom
            anchors.topMargin: 10
            Text {
                text: lbl1
                color: imageBaseColor
                font.pixelSize: 12
                font.bold: true
                opacity: 1
                font.family: "Open Sans"
            }
            Text {
                text: lbl1Optins
                color: Style.theme.historyTextOutFg
                font.pixelSize: 12
                font.family: "Open Sans"
            }
        }

        Row{
            anchors.top: info1.bottom
            anchors.topMargin: 4
            Text {
                text: lbl2
                color: imageBaseColor
                font.pixelSize: 12
                font.bold: true
                opacity: 1
                font.family: "Open Sans"
            }
            Text {
                text: lbl2Options
                color: Style.theme.historyTextOutFg
                font.pixelSize: 12
                font.family: "Open Sans"
            }
        }
    }

    MouseArea{
        id: mouse
        anchors.fill: parent
        onClicked: {
            selected()
        }
        onPressAndHold: {
            scrumBoardDelegateOptions.open()
        }
    }

    RippleLayout{
        anchors.fill: parent
        mRadius: 4
        mouseArea: mouse
    }
}
