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

    AddNewChannelDrawer{
        id: addNewChannel
    }

    NewConversationToolbar{
        id: header
        width: parent.width
        height: 45
        backgroundColor: Style.theme.titleBgActive
    }


    ListView{
        id: listView
        anchors.top: header.bottom
        width: parent.width
        height: parent.height
        model: ListModel{}

        delegate: Rectangle{
            color: "transparent"
            width: parent.width
            height: 40
            opacity: model.enable? 1: .4

            Image{
                id: icon
                source: model.icon
                anchors.left: parent.left
                anchors.leftMargin: 16
                anchors.verticalCenter: parent.verticalCenter
                opacity: .8
            }
            Text {
                id: namelbl
                text: model.title
                anchors.left: icon.right
                anchors.leftMargin: 32
                anchors.verticalCenter: icon.verticalCenter
                color: "white"
                font.pixelSize: 14
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
