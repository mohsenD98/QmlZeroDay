import QtQuick 2.12
import QtGraphicalEffects 1.0

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
    property color imageBaseColor
    property string icon

    signal selected
    signal deleteRequested

    Rectangle{
        id: imageSection
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.margins: 4
        width: height
        radius: width / 2
        color: imageBaseColor

        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: Rectangle {
                x: imageSection.x; y: imageSection.y
                width: imageSection.width
                height: imageSection.height
                radius: imageSection.radius
            }
        }

        Image{
            id: profilePhoto
            anchors.centerIn: parent
            source: icon
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: lastPmDate
        text: "2022-07-31"
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 8
        color: Style.theme.dialogsTextFgActive
        font.pixelSize: 12
        font.family: "Open Sans"
        opacity: .6
    }

    Image{
        id: recivedImg
        anchors.verticalCenter: lastPmDate.verticalCenter
        anchors.right: lastPmDate.left
        anchors.rightMargin: 8
        source: "qrc:/icons/history_received@3x.png"
        fillMode: Image.PreserveAspectFit
        opacity: .5

        ColorOverlay{
            anchors.fill: parent
            source: parent
            color: imageBaseColor
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
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 10
                opacity: 1
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
    }

    RippleLayout{
        anchors.fill: parent
        mRadius: 4
        mouseArea: mouse
    }
}
