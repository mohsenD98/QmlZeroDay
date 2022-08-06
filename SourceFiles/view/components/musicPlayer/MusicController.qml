import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0
import QtQuick.Controls.Material 2.12

import Style 1.0

Rectangle{
    id: musicController
    width: parent.width
    height: 180
    anchors.bottom: parent.bottom

    property color frontColor

    Rectangle{
        id: imageSection
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 16
        anchors.rightMargin: 8
        width: 55
        height: width
        radius: 8

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
            source: "qrc:/../icons/info/profilePic.jpg"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }

    Text {
        id: musicName
        text: "music name"
        font.pixelSize: 18
        font.bold: true
        color: frontColor
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 16
        anchors.leftMargin: 8
        font.family: "Open Sans"
    }

    Text{
        id: artistName
        text: "music name"
        font.pixelSize: 14
        font.bold: false
        color: frontColor
        opacity: .6
        anchors.top: musicName.bottom
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.topMargin: 6
        font.family: "Open Sans"
    }

    Slider{
        id: slider
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: artistName.bottom
        anchors.margins: 8
        Material.accent: Style.theme.sideBarIconFgActive
        value: .5
        background: Rectangle {
             y: slider.topPadding + slider.availableHeight / 2 - height / 2
             implicitHeight: 3
             width: slider.width
             height: implicitHeight
             radius: 2
             color:  frontColor
             opacity: .4

             Rectangle {
                 width: slider.visualPosition * parent.width
                 height: parent.height
                 color: Style.theme.sideBarIconFgActive
                 radius: 2
             }
         }
    }

    Rectangle{
        anchors.top: slider.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        color: "transparent"

        RowLayout{
            anchors.fill: parent

            RoundButton{
                icon.source: "qrc:/../icons/player/player_repeat@3x.png"
                Layout.alignment: Qt.AlignLeft
                flat: true
            }
            RoundButton{
                icon.source: "qrc:/../icons/player/player_backward@3x.png"
                Layout.alignment: Qt.AlignCenter
                scale: 1.5
                flat: true
            }
            RoundButton{
                icon.source: playing? "qrc:/icons/player/player_pip_play@3x.png": "qrc:/icons/player/player_pip_pause@3x.png"
                Layout.alignment: Qt.AlignCenter
                flat: true
                onClicked: playing = !playing
            }
            RoundButton{
                icon.source: "qrc:/../icons/player/player_forward@3x.png"
                scale: 1.5
                Layout.alignment: Qt.AlignCenter
                flat: true
            }
            RoundButton{
                icon.source: "qrc:/../icons/player/player_more@3x.png"
                Layout.alignment: Qt.AlignRight
                flat: true
            }
        }

    }
}
