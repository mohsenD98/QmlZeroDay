import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../../toolbar"

Drawer{
    id: control
    width: parent.width
    height: parent.height
    dim: true
    edge: Qt.RightEdge
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }

    enter: Transition {
        // OFF - default entering animation
        // NumberAnimation { property: "opacity"; from: 0.0; to: 1.0 }
    }

    signal channelNameSetted(var name)
    property string  inConversationWith

    background: Rectangle{
        color: "transparent"

        Rectangle{
            anchors.fill: parent
            z: -1
            Image{
                anchors.fill: parent
                source: Style.theme.appBackgroundImg
            }
        }
        ConversationProfileDrawerToolbar{
            id: header
            backgroundColor: "#242f3d"
            runStarAnimation: control.opened

            onCloseRequset: {
                profileDrawer.close()
            }

        }

        ListHeader{
            id: bar
            width: parent.width
            color: "transparent"
            anchors.top: header.bottom
            contentModel:["Audio", "Photo", "Videos", "links", "Bookmarks"]

        }
    }
}
