import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import "../musicPlayer"

import Style 1.0

// dont set clip true
Item{
    id: container
    width:  parent.width
    height: 64
    antialiasing: true

    property color backgroundColor
    property color textColor
    property string conversationWithUserName
    property bool multichatMode: false

    signal openMusicPlayerDrawer
    signal openProfile

    DropShadow {
        id: rectShadow
        anchors.fill: parent
        cached: true
        horizontalOffset: 3
        verticalOffset: 3
        radius: 1
        samples: 2
        color: "#10000000"
        smooth: true
        source: bg
    }
    Rectangle{
        id: bg
        color: backgroundColor
        width: parent.width
        height: parent.height

        MouseArea{
            anchors.fill: parent
            onClicked: openProfile()
        }

        RoundButton{
            id: backBtn
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "qrc:/../icons/info/info_back@3x.png"
            anchors.left: parent.left
            flat: true
            scale: 1.5

            onClicked: {
                if(!multichatMode)
                    conversationPageFrame.close()
                else
                    multiOpenDrawer.close()

            }
        }

        Rectangle{
            id: imageSection
            anchors.left: backBtn.right
            anchors.verticalCenter: parent.verticalCenter
            height: parent.height - 10
            width: height
            radius: width / 2

            layer.enabled: true
            layer.effect: OpacityMask {
                maskSource: Rectangle {
                    x: imageSection.x; y: imageSection.y
                    width: imageSection.width
                    height: imageSection.height
                    radius: imageSection.radius
                }
            }

            Image{
                id: profilePhoto
                anchors.centerIn: parent
                source: "qrc:/../icons/info/profilePic.jpg"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle{
            anchors.left: imageSection.right
            anchors.leftMargin: 16
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.rightMargin: 8
            color: "transparent"

            Text {
                id: namelbl
                text: conversationWithUserName
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: -7
                font.bold: true
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 15
                font.family: "Open Sans"
            }
            Row{
                id: info1
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 7
                Text {
                    text: "last seen at 1:19"
                    color: Style.theme.dialogsTextFgActive
                    font.pixelSize: 14
                    font.family: "Open Sans"
                    opacity: .4
                }
            }
        }

        RoundButton{
            id: options
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 4
            height: 40
            width: height
            icon.source: "qrc:/../icons/mediaview_more@3x.png"
            opacity: .8
            flat: true
            scale: 1.2
        }

        RoundButton{
            id: call
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: options.left
            anchors.rightMargin: -0
            icon.source: "qrc:/../icons/calls/call_answer@3x.png"
            opacity: .8
            flat: true
            scale: 1.5

            onClicked: musicPlayer.height = 35
        }
    }

    MiniMusicPlayer{
        id: musicPlayer
        height: 35
        width: parent.width
        anchors.top: bg.bottom
        backgroundColor: container.backgroundColor
        textColor: container.textColor

        Behavior on height{
            NumberAnimation{
                duration: 174
            }
        }

        onClosePlayer:{
            height = 0
        }

        onOpenMainMusicPlayer: openMusicPlayerDrawer()
    }
}
