import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0
import MGram.sql.conversation 1.0

import "../../components/listDelegates/conversation"
import "../../components/buttons"
import "../../components/drawer/conversation"

Rectangle {
    id:root
    color: "Transparent"

    function closeOverlay(){
        fab.controllerOptions.height = 0
        fab.closing = true
        moverlay.visible = !moverlay.visible

    }

    ConversationPageDrawer{
        id: conversationPageFrame
        edge: Qt.RightEdge
        dragMargin: 0
    }

    NewConversationDrawer{
        id: addConversationFrame
        edge: Qt.RightEdge
        dragMargin: 0

        onAddContact: {
            if(contactName === "Saved Messages"){
                conversationRepeater.model.addContact(contactName + "_" + conversationRepeater.model.rowCount())
            }
            else{
                conversationRepeater.model.addContact(contactName)
            }
            addConversationMenu.close()
        }
    }

    Column{
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.margins: 4
        height: parent.height
        spacing: 4

        Repeater{
            id: conversationRepeater
            model: SqlContactModel{}

            delegate: ConversationDelegate{
                width: parent.width
                height: 60
                icon: "qrc:/icons/info/profilePic.jpg"
                title: model.contactName? model.contactName: ""
                lbl1: qsTr("this is last message")
                imageBaseColor: Style.theme.sideBarIconFgActive

                onSelected: {
                    conversationPageFrame.conversationSide = model.contactName
                    conversationPageFrame.reset()
                    conversationPageFrame.open()
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

    Fab {
        id: fab
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        backgroundColor: "#1976D2"
        z: 2

        onFabClicked: addConversationFrame.open()
    }
}
