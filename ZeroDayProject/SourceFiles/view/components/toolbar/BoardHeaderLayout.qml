import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import Style 1.0

Rectangle {
    property real widgetsHeight: height
    signal applogoClicked

    RoundButton{
        id: appLogo
        flat: true
        icon.source: "qrc:/../icons/mGram/logo_1.png"
        anchors.verticalCenter: parent.verticalCenter
        onClicked: applogoClicked()
    }
    Text {
        id: appTitle
        text: qsTr("Zero Day")
        anchors.verticalCenter: appLogo.verticalCenter
        anchors.left: appLogo.right
        anchors.leftMargin: 8
        color: Style.theme.dialogsTextFgActive
        font.pixelSize: 18
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

        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: Rectangle {
                x: profilePhoto.x; y: profilePhoto.y
                width: profilePhoto.width
                height: profilePhoto.height
                radius: profilePhoto.radius
            }
        }

        Image {
            id: imgAuthor
            opacity: 1
            smooth: false
            anchors.fill: parent
            source: "qrc:/../icons/info/profilePic.jpg"
            scale: 1.4
        }
    }

    RoundButton{
        id: notifBtn
        flat: true
        icon.source: "qrc:/../icons/menu/mute_for_plain@3x.png"
        anchors.right: profilePhoto.left
        anchors.rightMargin: 8
        anchors.verticalCenter: parent.verticalCenter
        scale: 1.4
    }
    RoundButton{
        id: infoBtn
        flat: true
        icon.source: "qrc:/../icons/info/info_report@3x.png"
        anchors.right: notifBtn.left
        anchors.verticalCenter: parent.verticalCenter
        scale: 1.4
    }

}
