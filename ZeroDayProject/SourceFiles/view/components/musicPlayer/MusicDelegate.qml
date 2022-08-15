import QtQuick 2.12
import Qt5Compat.GraphicalEffects
import QtQuick.Controls 2.12

import Style 1.0

import "../../tools"

Item {
    property string musicTitle
    property string musicArtist
    property bool playingCurrent: false
    property color textColor

    Rectangle{
        anchors.fill: parent
        color: "transparent"

        MouseArea{
            id: mouse
            anchors.fill: parent
        }

        RippleLayout{
            mouseArea: mouse
            anchors.fill: parent
        }

        Rectangle{
            id: imageSection
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 8
            width: parent.height - 8
            height: width
            radius: width / 2
            clip: true

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
                source: "qrc:/icons/info/profilePic.jpg"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }

            Rectangle{
                anchors.fill: parent
                color: "#33000000"

                RoundButton{
                    icon.source: playingCurrent? "qrc:/icons/player/player_pip_play@3x.png": "qrc:/icons/player/player_pip_pause@3x.png"
                    anchors.centerIn: parent
                    flat: true
                    scale: .7
                    onClicked: playingCurrent = !playingCurrent
                }
            }
        }

        Text {
            id: musicName
            text: musicTitle
            font.pixelSize: 14
            font.bold: true
            color: textColor
            anchors.top: imageSection.top
            anchors.left: imageSection.right
            anchors.leftMargin: 8
            font.family: "Open Sans"
        }

        Text{
            id: artistName
            text: musicArtist
            font.pixelSize: 11
            font.bold: false
            color: textColor
            opacity: .6
            anchors.top: musicName.bottom
            anchors.left: musicName.left
            anchors.topMargin: 4
            font.family: "Open Sans"
        }
    }
}
