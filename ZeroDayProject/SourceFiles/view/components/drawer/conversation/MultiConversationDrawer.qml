import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

import Style 1.0

import "../../../layouts"

Drawer{
    id: control
    width: parent.width
    height: parent.height
    dim: true
    edge: Qt.rightEdge
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }
    property var conversationSides

    function setSelectedChats(chats){
        conversationSides = chats
        conversationSides = conversationSides
    }

    function removeMessages(){
        conversation.removeConversationMessages()
    }

    Rectangle{
        anchors.fill: parent
        color: Style.theme.windowBg

        Grid{
            columns: 2
            rows: 2
            columnSpacing: 4
            rowSpacing: 4
            anchors.fill: parent

            Repeater{
                id: chatRepeater
                model: conversationSides
                delegate: ConversationActivity{
                    id: conversation
                    width: chatRepeater.count >= 2 ? parent.width / 2 : parent.width
                    height: chatRepeater.count >= 3 ? parent.height / 2 : parent.height
                    inConversationWith: modelData
                    isMultiChatOpened: true
                    clip: true
                }
            }
        }
    }
}
