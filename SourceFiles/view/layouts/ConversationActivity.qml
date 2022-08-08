import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0
import MGram.sql.conversation 1.0

import "../components/toolbar"
import "../components/buttons"
import "../components/message"
import "../components/listDelegates/conversation"
import "../components/musicPlayer"
import "../components/drawer/conversation"

Page {
    id: root
    property string inConversationWith
    property real numberOfSelecteMessages: 0

    function removeConversationMessages(){
        listView.model.deleteAllMessages()
    }

    header: Column {
        width: parent.width

        ConversationHeaderLayout{
            id: profileHeader
            backgroundColor: "#242f3d"
            textColor: "#ffffff"
            visible: numberOfSelecteMessages == 0
            conversationWithUserName: inConversationWith

            onOpenMusicPlayerDrawer:{
                musicplayerList.open()
            }

            onOpenProfile: profileDrawer.open()
        }

        MessageOptionHeader{
            id: optionalHeader
            height: 64
            width: parent.width
            color: profileHeader.backgroundColor
            clip: false

            visible: numberOfSelecteMessages > 0
            counter: numberOfSelecteMessages

            onDeleteRequested: {
                var deleteList = []
                for(var i=0; i<listView.count; ++i){
                    if(listView.itemAtIndex(i) && listView.itemAtIndex(i).selected){
                        deleteList.push(i)
                    }
                }
                listView.model.deleteMsg(deleteList)
                cancelRequested()
            }
            onCancelRequested :{
                numberOfSelecteMessages = 0
                for(var i=0; i<listView.count; ++i){
                    if(listView.itemAtIndex(i)){
                        listView.itemAtIndex(i).selectingMode = false
                        listView.itemAtIndex(i).selected = false
                    }
                }
            }
        }
    }

    Rectangle{
        anchors.fill: parent
        Image{
            anchors.fill: parent
            source: Style.theme.chatBackgroundImg
        }
    }

    ColumnLayout {
        anchors.fill: parent

        ListView {
            id: listView
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.margins: pane.leftPadding + msgRow.msgField.leftPadding
            Layout.leftMargin: messageSelectionMode? 40 : pane.leftPadding + msgRow.msgField.leftPadding
            displayMarginBeginning: 40
            displayMarginEnd: 40
            verticalLayoutDirection: ListView.BottomToTop
            spacing: 0
            model: SqlConversationModel {
                recipient: inConversationWith
            }

            property bool messageSelectionMode: false

            delegate: MessageBox{
                opacity: 1
                msgColor: receiving? Style.theme.msgInBg: Style.theme.msgOutBg
                receiving: model.recipient === "Me"

                msgText: model.message
                msgTextColor: receiving? Style.theme.historyTextOutFg: "white"

                msgDate: Qt.formatDateTime(model.timestamp, "hh:mm")
                messageType: model.type

                property string dayDate: model.timestamp.split(" ")[0] + " " + model.timestamp.split(" ")[1]

                Rectangle{
                    anchors.fill: parent
                    color: "transparent"
                }

                onSetSelectingMode: {
                    if(selected){
                        numberOfSelecteMessages++
                        for(var i=0; i<listView.count; ++i){
                            if(listView.itemAtIndex(i))
                                listView.itemAtIndex(i).selectingMode = true
                        }
                    }
                    else{
                        numberOfSelecteMessages --
                        var isThereHoldedConversation = false
                        for(i=0; i<listView.count; ++i){
                            if(listView.itemAtIndex(i) && listView.itemAtIndex(i).selected){
                                isThereHoldedConversation = true
                            }
                        }
                        if(isThereHoldedConversation){
                            for(i=0; i<listView.count; ++i){
                                if(listView.itemAtIndex(i))
                                    listView.itemAtIndex(i).selectingMode = true
                            }
                        }else{
                            numberOfSelecteMessages = 0
                            for(i=0; i<listView.count; ++i){
                                if(listView.itemAtIndex(i))
                                    listView.itemAtIndex(i).selectingMode = false
                            }
                        }
                    }
                }
            }
        }

        Pane {
            id: pane
            Layout.fillWidth: true
            Material.background: "#242f3d"

            MessageRow{
                id: msgRow
                width: parent.width
                anchors.bottom: parent.bottom

                onSendMsg: {
                    if(listView.count > 0 && Qt.formatDateTime( new Date(), "d MM") !== listView.itemAtIndex(0).dayDate){
                        listView.model.sendMessage(inConversationWith, Qt.formatDateTime( new Date(), "d MM"), 0);
                    }

                    listView.model.sendMessage(inConversationWith, newMsg, 1);
                }
            }
        }
    }

    RoundButton {
        id: fab
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        z: 2
        width: 55
        height: 55
        icon.width: 20
        icon.height: 20
        anchors.bottomMargin: 80
        anchors.rightMargin: 8
        icon.source: "qrc:/../icons/calendar_down@3x.png"
        icon.color: Style.theme.historyTextOutFg
        opacity: .9

        Material.background: Style.theme.msgInBg

        onClicked: {
            listView.positionViewAtBeginning()
        }
    }

    MusicPlayerDrawer{
        id: musicplayerList
        width: parent.width
        height: parent.height * 2 / 3
        backgroundColor: "#242f3d"
        textColor: "#ffffff"
    }

    ConversationProfileDrawer{
        id: profileDrawer
        inConversationWith: root.inConversationWith
    }

}

