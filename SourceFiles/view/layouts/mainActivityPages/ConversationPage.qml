import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0
import MGram.sql.Kanban 1.0

import "../../components/listDelegates/conversation"
import "../../components/buttons"

Rectangle {
    id:root
    color: "Transparent"

    function closeOverlay(){
        fab.controllerOptions.height = 0
        fab.closing = true
        moverlay.visible = !moverlay.visible

    }

    Column{
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.margins: 4
        height: parent.height
        spacing: 4

        Repeater{
            id: kanbanRepeater
            model: ["Mohsen", "Alireza", "Ashkan"]

            delegate: ConversationDelegate{
                width: parent.width
                height: 60
                icon: "qrc:/icons/info/profilePic.jpg"
                title: modelData
                lbl1: qsTr("this is last message")
                imageBaseColor: Style.theme.sideBarIconFgActive

                onSelected: {
                    console.log("under develop ...")
                }

                onDeleteRequested: {
                    console.log("under develop ...")
                }
            }
        }
    }

    Rectangle {
        id: moverlay
        anchors.fill: parent
        color: "#20000000"
        visible: false
        z: 1

        MouseArea {
            anchors.fill: parent
            onClicked: {
                closeOverlay()
            }
        }
    }

    FabMore {
        id: fab
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        icon: "+"
        enableText: true
        backgroundColor: "#1976D2"
        accentColor: "white"
        overlay: moverlay
        z: 2
        model: [{
                "name": "Add Conversation",
                "icon": "+",
                "baseColor": "#5eb5f7"
            }]

        onItemCalled: {
            closeOverlay()

            if(item === "Add Conversation"){
                console.log("under develop ...")
            }
        }
    }
}
