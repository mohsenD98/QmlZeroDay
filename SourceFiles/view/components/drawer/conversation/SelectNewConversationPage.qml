import QtQuick 2.12
import QtQuick.Controls 2.12

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
                                "title":"New Channel",
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

    AddNewChannelDrawer{
        id: addNewChannel

        onChannelNameSetted:{
            addNewConversation(name)
        }
    }

    NewConversationToolbar{
        id: header
        width: parent.width
        height: 55
        backgroundColor: Style.theme.titleBgActive
    }


    ListView{
        id: listView
        anchors.top: header.bottom
        width: parent.width
        height: parent.height
        model: ListModel{}

        delegate: Rectangle{
            color: "#1D2733"
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

                Image{
                    source: model.icon
                    opacity: .8
                    anchors.centerIn: parent
                    scale: 1.4
                }
            }

            Text {
                id: namelbl
                text: model.title
                anchors.left: icon.right
                anchors.leftMargin: 32
                anchors.verticalCenter: icon.verticalCenter
                color: "white"
                font.pixelSize: 16
                font.family: "Open Sans"
            }

            MouseArea{
                id: mouse
                anchors.fill: parent
                enabled: model.enable

                onClicked: {
                    addNewChannel.open()
                }
            }
            RippleLayout{
                mouseArea: mouse
                anchors.fill: parent
            }
        }
    }
}
