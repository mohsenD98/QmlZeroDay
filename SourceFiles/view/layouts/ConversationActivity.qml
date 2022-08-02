import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../components/toolbar"

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
            Layout.margins: pane.leftPadding + messageField.leftPadding
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

            RowLayout {
                width: parent.width
                anchors.bottom: parent.bottom

                RoundButton{
                    id: selectEmoje
                    icon.source: "qrc:/../icons/emoji/emoji_people@4x.png"
                    icon.height: 25
                    icon.width: 25
                    opacity: .5
                    flat: true
                    Layout.alignment: Qt.AlignBottom
                    Layout.bottomMargin: -12
                }

                TextArea {
                    id: messageField
                    placeholderText: qsTr("Message")
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignBottom
                    Layout.bottomMargin: -14
                    selectByMouse: true
                    selectByKeyboard: true
                    Layout.maximumHeight: 250
                    wrapMode: TextArea.Wrap
                    background: Rectangle{
                        color: "transparent"
                    }

                    onHeightChanged: {
                        pane.Layout.preferredHeight = messageField.implicitHeight+8
                    }

                    Material.accent: Style.theme.sideBarIconFgActive
                }

                RoundButton{
                    id: selectMedia
                    icon.source: "qrc:/../icons/chat/input_attach@3x.png"
                    opacity: .5
                    flat: true
                    icon.height: 35
                    icon.width: 35
                    Layout.alignment: Qt.AlignBottom
                    Layout.bottomMargin: -16
                    Layout.rightMargin: -16
                    visible: messageField.length == 0
                }

                RoundButton{
                    id: recordVoice
                    icon.source: "qrc:/../icons/info/info_media_voice@3x.png"
                    opacity: .5
                    icon.height: 35
                    icon.width: 35
                    flat: true
                    Layout.alignment: Qt.AlignBottom
                    Layout.rightMargin: -8
                    Layout.bottomMargin: -16
                    visible: messageField.length == 0
                }

                RoundButton{
                    id: sendPm
                    icon.source: "qrc:/../icons/chat/input_send@3x.png"
                    icon.height: 25
                    icon.width: 25
                    flat: true
                    Layout.alignment: Qt.AlignBottom
                    Layout.bottomMargin: -14
                    visible: messageField.length > 0
                    icon.color: Style.theme.sideBarIconFgActive
                }

            }
        }
    }
}

