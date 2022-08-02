import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../components/toolbar"
import "../components/message"

Page {
    id: root

    property string inConversationWith
    Material.background: Style.theme.windowBg

    header:  ConversationHeaderLayout{
        backgroundColor: Style.theme.titleBgActive

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
            model: 100
            delegate: Rectangle{
                width: parent.width * .75
                height: 30
                radius: 4
                opacity: .1
            }

            ScrollBar.vertical: ScrollBar {}
        }

        Pane {
            id: pane
            Layout.fillWidth: true
            Material.background: Style.theme.titleBgActive

            MessageRow{
                id: msgRow
                width: parent.width
                anchors.bottom: parent.bottom

            }
        }
    }
}

