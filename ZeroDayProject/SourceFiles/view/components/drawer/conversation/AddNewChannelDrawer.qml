import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../../toolbar"

Drawer{
    id: control
    width: parent.width
    height: parent.height
    dim: true
    edge: Qt.RightEdge
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }

    signal channelNameSetted(var name)
    background: Rectangle{
        color: "#242f3d"

        NewChannelToolbar{
            id: header
            backgroundColor: "#242f3d"
            onCheckClicked: {
                if(channelName.text != ""){
                    channelNameSetted(channelName.text)
                    control.close()
                }
            }
        }

        RoundButton {
            id: fabImg
            width: 80
            height: 80
            anchors.top: header.bottom
            anchors.left: parent.left
            anchors.margins: 16
            highlighted: true
            smooth: true
            icon.source: "qrc:/../icons/upload_chat_photo@3x.png"

            Material.background: Style.theme.sideBarIconFgActive
        }

        TextArea{
            id: channelName
            anchors.left: fabImg.right
            anchors.verticalCenter: fabImg.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 8
            anchors.leftMargin: 8
            font.pixelSize: 15
            placeholderText: "Channel name"

            Material.accent: Style.theme.sideBarIconFgActive
        }

        TextArea{
            id: desc
            anchors.top: fabImg.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.rightMargin: 16
            anchors.leftMargin: 16
            anchors.topMargin: 8
            font.pixelSize: 14
            placeholderText: "Description"

            Material.accent: Style.theme.sideBarIconFgActive
        }

        Text {
            text: qsTr("You can provide an optional description for your channel.")
            font.pixelSize: 16
            color: "white"
            opacity: .6
            anchors.top: desc.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.rightMargin: 16
            anchors.leftMargin: 16
            anchors.topMargin: 8
        }
    }
}
