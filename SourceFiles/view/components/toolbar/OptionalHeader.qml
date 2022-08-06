import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

Rectangle {

    property string counter: "1"

    signal deleteRequested
    signal cancelRequested

    RoundButton{
        id: close
        icon.source: "qrc:/../icons/history_file_cancel@3x.png"
        flat: true
        scale: 1

        onClicked: cancelRequested()
    }

    Text {
        text: counter
        font.pixelSize: 18
        color: "white"
        opacity: .95
        font.family: "Open Sans"
        anchors.verticalCenter: close.verticalCenter
        anchors.left: close.right
        font.bold: true
    }

    Row{
        anchors.right: parent.right
        height: parent.height

        RoundButton{
            id: muteBtn
            icon.source: "qrc:/../icons/settings/sound@3x.png"
            flat: true
        }

        RoundButton{
            id: archiveBtn
            icon.source: "qrc:/../icons/archive_userpic@3x.png"
            flat: true
        }

        RoundButton{
            id: deleteBtn
            icon.source: "qrc:/../icons/info/info_media_delete@3x.png"
            flat: true

            onClicked: deleteRequested()
        }

        RoundButton{
            id: mroeBtn
            icon.source: "qrc:/../icons/player/player_more@3x.png"
            flat: true
        }
    }
}
