import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt5Compat.GraphicalEffects

import Style 1.0

import "../../toolbar"
import "../../../tools"

Rectangle {
    id:root
    anchors.fill: parent
    color: Style.theme.windowBg
    clip: true

    Component.onCompleted: {
        listView.model.append({
                                "title":"New Conversation",
                                "icon":"qrc:/icons/dialogs/dialogs_channel@3x.png",
                                "enable": true
                            })
        listView.model.append({
                                "title":"New Peer2Peer",
                                "icon":"qrc:/icons/dialogs/dialogs_unlock@3x.png",
                                "enable": false
                            })
    }

    signal addNewConversation(var convName)

    AddNewConversationDrawer{
        id: addNewChannelDrawer

        onChannelNameSetted:{
            addNewConversation(name)
        }
    }

    NewConversationToolbar{
        id: header
        width: parent.width
        height: 55
        backgroundColor: "#242f3d"
    }


    ListView{
        id: listView
        anchors.top: header.bottom
        width: parent.width
        height: parent.height
        model: ListModel{}

        delegate: Rectangle{
            color: Style.theme.titleBgActive
            width: parent.width
            height: 40

            Rectangle{
                id: icon
                width: 40
                height: 40
                anchors.left: parent.left
                anchors.leftMargin: 16
                anchors.verticalCenter: parent.verticalCenter
                color: "transparent"

                RoundButton{
                    icon.source: model.icon
                    opacity: .6
                    anchors.centerIn: parent
                    flat: true
                    icon.color: Style.theme.historyTextInFgSelected

                }
            }

            Text {
                id: namelbl
                text: model.title
                anchors.left: icon.right
                anchors.leftMargin: 32
                anchors.verticalCenter: icon.verticalCenter
                color: Style.theme.historyTextInFgSelected
                font.pixelSize: 16
                font.family: "Open Sans"
            }

            MouseArea{
                id: mouse
                anchors.fill: parent
                enabled: model.enable

                onClicked: {
                    addNewChannelDrawer.open()
                }
            }
            RippleLayout{
                mouseArea: mouse
                anchors.fill: parent
            }
        }
    }
}
