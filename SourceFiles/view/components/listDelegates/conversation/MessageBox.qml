import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Shapes 1.12

import Style 1.0

import "../../../tools"

Rectangle{
    height: msg.implicitHeight + 16 + 12 // 16 is margins, 12 is listview spacing
    width: parent.width
    color: "transparent"

    property bool receiving
    property string msgText
    property string msgDate
    property color msgColor
    property color msgTextColor
    property bool selectingMode
    property bool selected: false

    signal setSelectingMode

    Rectangle{
        id: overlay
        color: "#de000000"
        anchors.fill: parent
        z: 100
        opacity: .2
        visible: selected
    }

    MouseArea{
        id: mouse
        anchors.fill: parent

        onClicked: {
            if(selectingMode){
                selected = ! selected
                setSelectingMode()
                return
            }
        }

        onPressAndHold: {
            if(selected){
                selected = false
            }
            else{
                selected = true
            }
            setSelectingMode()
        }
    }

    RippleLayout{
        mouseArea: mouse
        anchors.fill: parent
    }

    Rectangle{
        id: selectionMark
        width: selectingMode? 25: 1
        height: width
        radius: width/2
        border.width: 2
        border.color: "white"
        anchors.verticalCenter: parent.verticalCenter
        visible: selectingMode
        color: selected? Style.theme.sideBarIconFgActive: "transparent"

        RoundButton {
            id: fabImg
            anchors.centerIn: parent
            flat: true
            visible: selected
            icon.source: "qrc:/../icons/player/player_check@3x.png"
        }
    }

    MessageBoxBorder{
        id: msgBox
        height: msg.implicitHeight + 16 // 16 is margins
        width: Math.min(parent.width * .75, (msg.text.length * 4) + date.width + 110) // 110 is image and margins
        setupToRecive: receiving
        msgColor: parent.msgColor
        anchors.right: receiving ? undefined : parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: (receiving && selectingMode) ? selectionMark.right: (receiving ? parent.left : undefined)
        anchors.leftMargin: (receiving && selectingMode) ? 12 : 0

        Image{
            id: recivedImg
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.margins: 8
            source: "qrc:/icons/history_received@3x.png"
            fillMode: Image.PreserveAspectFit

            ColorOverlay{
                anchors.fill: parent
                source: parent
                color: Style.theme.sideBarIconFgActive
            }
        }

        Text {
            id: date
            anchors.verticalCenter: recivedImg.verticalCenter
            anchors.right: recivedImg.left
            anchors.rightMargin: 4
            text: msgDate
            color: msgTextColor
            opacity: .8
            font.family: "Open Sans"
            font.pixelSize: 12
        }

        Rectangle{
            anchors.right: date.left
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.margins: 8
            color: "transparent"
            clip: true

            FontLoader
            {
                 id: mainFont
                 source: "qrc:/tools/font/presianDefault.ttf"
            }

            Text {
                id: msg
                height: parent.height
                width: parent.width
                wrapMode: Text.WrapAtWordBoundaryOrAnywhere
                text: msgText
                color: msgTextColor
                opacity: .99
                font.family: mainFont.name
                font.pixelSize: 13
                font.weight: Font.Thin
            }
        }
    }
}

