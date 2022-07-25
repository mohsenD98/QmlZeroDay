import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

Rectangle {
    property real widgetsHeight: height
    signal applogoClicked

    RoundButton{
        id: appLogo
        flat: true
        icon.source: "qrc:/../icons/mGram/logo.png"
        anchors.verticalCenter: parent.verticalCenter
        onClicked: applogoClicked()
    }
    Text {
        id: appTitle
        text: qsTr("Routine")
        anchors.verticalCenter: appLogo.verticalCenter
        anchors.left: appLogo.right
        anchors.leftMargin: 8
        color: Style.theme.dialogsTextFgActive
        font.pixelSize: 14
        font.family: "Open Sans"
        font.bold: true
    }

    Rectangle{
        id: profilePhoto
        width: widgetsHeight - 15
        height: widgetsHeight - 15
        radius: widgetsHeight - 15
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.verticalCenter: parent.verticalCenter
    }

    RoundButton{
        id: notifBtn
        flat: true
        icon.source: "qrc:/../icons/menu/mute_for_plain@3x.png"
        anchors.right: profilePhoto.left
        anchors.rightMargin: 8
        anchors.verticalCenter: parent.verticalCenter
    }
    RoundButton{
        id: infoBtn
        flat: true
        icon.source: "qrc:/../icons/info/info_report@3x.png"
        anchors.right: notifBtn.left
        anchors.verticalCenter: parent.verticalCenter
    }

}
