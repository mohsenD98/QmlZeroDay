import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0
import MGram.sql.conversation 1.0

import "../../components/listDelegates/conversation"
import "../../components/buttons"
import "../../components/drawer/conversation"
import "../../components/menu/conversation"

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

    AddNewConversation{
        id: addConversationMenu
        width: Math.min(2 * parent.width / 3, 250)
        height: Math.min(2 * parent.height / 3, 350)

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
                addConversationMenu.open()
            }
        }
    }
}
