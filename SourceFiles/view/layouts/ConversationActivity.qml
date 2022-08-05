import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0
import MGram.sql.conversation 1.0

import "../components/toolbar"
import "../components/message"
import "../components/listDelegates/conversation"

Page {
    id: root
    property string inConversationWith

    header:  ConversationHeaderLayout{
        backgroundColor: "#242f3d"
        conversationWithUserName: inConversationWith
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
            displayMarginBeginning: 40
            displayMarginEnd: 40
            verticalLayoutDirection: ListView.BottomToTop
            spacing: 12
            model: SqlConversationModel {
                recipient: inConversationWith
            }

            delegate: MessageBox{
                opacity: 1
                msgColor: receiving? Style.theme.msgInBg: Style.theme.msgOutBg
                anchors.right: receiving ? undefined : parent.right
                receiving: model.recipient === "Me"

                msgText: model.message
                msgTextColor: receiving? Style.theme.historyTextOutFg: "white"
                msgDate: Qt.formatDateTime(model.timestamp, "hh:mm")


                Rectangle{
                    anchors.fill: parent
                    color: "transparent"
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
                    listView.model.sendMessage(inConversationWith, newMsg);
                }
            }
        }
    }
}

