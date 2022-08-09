import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0
import "../../tools"

Item {
    property var musicModel
    property color backgroundColor
    property color textColor
    property bool playing: false

    signal closePlayer
    signal openMainMusicPlayer

    Rectangle{
        width: parent.width
        height: parent.height
        color: backgroundColor
        clip: true

        MouseArea{
            id: mouse
            anchors.fill: parent

            onClicked: openMainMusicPlayer()
        }
        RippleLayout{
            mouseArea: mouse
            anchors.fill: parent
        }

        RoundButton{
            id: playingBtn
            icon.source: !playing? "qrc:/icons/player/player_play@3x.png": "qrc:/icons/player/player_pause@3x.png"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            flat: true
            icon.color: Style.theme.sideBarIconFgActive

            onClicked: playing = !playing
        }

        Text {
            id: artistName
            text: qsTr("Artist name - ")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: playingBtn.right
            font.bold: true
            font.pixelSize: 13
            color: textColor
        }

        Text {
            id: musicName
            text: qsTr("This is music name.mp3")
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: artistName.right
            font.bold: false
            font.pixelSize: 13
            opacity: .95
            color: textColor
        }

        RoundButton{
            id: closeBtn
            icon.source: "qrc:/icons/player/player_pip_close@3x.png"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            flat: true
            icon.color: textColor
            opacity: .85

            onClicked: closePlayer()
        }
    }
}
