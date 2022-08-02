import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../../animation"

RowLayout {

    property alias msgField: messageField

    FontLoader
    {
         id: presianFont
         source: "qrc:/tools/font/presianDefault.ttf"
    }

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
        font.bold: false
        font.pixelSize: 14
        font.family: presianFont.name
        onPreeditTextChanged: Qt.inputMethod.commit() // to avoid Android's uncommited text

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

        onPressed: {
            micAnim.startAnimations = true
        }
        onReleased: {
            micAnim.startAnimations = false
        }

        RecordingAnimation{
            id: micAnim
            animationMaxHeight: 80
            animationMinHeight: 50
            anchors.centerIn: parent
            startAnimations: false
            visible: recordVoice.pressed
            micColor: Style.theme.sideBarIconFgActive
        }
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
