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

    signal holdingConversationStateChanged(var numberOfSelected)

    property real numberOfSelecteConversations: 0

    function closeOverlay(){
        fab.controllerOptions.height = 0
        fab.closing = true
        moverlay.visible = !moverlay.visible

    }

    function deleteSelected(){
        for(var i=0; i<conversationRepeater.count; ++i){
            if(conversationRepeater.itemAt(i).holding){

                // remove messages
                conversationPageFrame.conversationSide = conversationRepeater.itemAt(i).title
                conversationPageFrame.reset()
                conversationPageFrame.removeMessages()

                //remove contact
                conversationRepeater.model.deleteContact(i)
            }
        }
        deSelectAll()
    }

    function deSelectAll(){
        numberOfSelecteConversations = 0
        holdingConversationStateChanged(numberOfSelecteConversations)
        for(var i=0; i<conversationRepeater.count; ++i){
            conversationRepeater.itemAt(i).holdingMode = false
            conversationRepeater.itemAt(i).holding = false
        }
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
                height: 65
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
                onSetHoldingMode: {
                    if(holding){
                        numberOfSelecteConversations++
                        holdingConversationStateChanged(numberOfSelecteConversations)
                        for(var i=0; i<conversationRepeater.count; ++i){
                            conversationRepeater.itemAt(i).holdingMode = true
                        }
                    }
                    else{
                        numberOfSelecteConversations --
                        var isThereHoldedConversation = false
                        holdingConversationStateChanged(numberOfSelecteConversations)
                        for(i=0; i<conversationRepeater.count; ++i){
                            if(conversationRepeater.itemAt(i).holding){
                                isThereHoldedConversation = true
                            }
                        }
                        if(isThereHoldedConversation){
                            holdingConversationStateChanged(numberOfSelecteConversations)
                            for(i=0; i<conversationRepeater.count; ++i){
                                conversationRepeater.itemAt(i).holdingMode = true
                            }
                        }else{
                            numberOfSelecteConversations = 0
                            holdingConversationStateChanged(false)
                            for(i=0; i<conversationRepeater.count; ++i){
                                conversationRepeater.itemAt(i).holdingMode = false
                            }
                        }
                    }
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
