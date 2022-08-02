import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import Style 1.0

Item{
    id: container
    width:  parent.width
    height: 50
    antialiasing: true

    property color backgroundColor
    property string conversationWithUserName

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


        RoundButton{
            id: backBtn
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "qrc:/../icons/info/info_back@3x.png"
            anchors.left: parent.left
            flat: true

            onClicked: conversationPageFrame.close()
        }

        Rectangle{
            id: imageSection
            anchors.left: backBtn.right
            anchors.verticalCenter: parent.verticalCenter
            width: height
            height: parent.height - 8
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
                anchors.top: parent.top
                anchors.topMargin: 8
                font.bold: true
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 12
                font.family: "Open Sans"
            }
            Row{
                id: info1
                anchors.top: namelbl.bottom
                anchors.topMargin: 5
                Text {
                    text: "last seen at 1:09"
                    color: Style.theme.dialogsTextFgActive
                    font.pixelSize: 11
                    font.family: "Open Sans"
                    opacity: .4
                }
            }
        }

        RoundButton{
            id: options
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: -4
            height: 40
            width: height
            icon.source: "qrc:/../icons/mediaview_more@3x.png"
            opacity: .8
            flat: true
        }

        RoundButton{
            id: call
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: options.left
            anchors.rightMargin: -4
            icon.source: "qrc:/../icons/calls/call_answer@3x.png"
            opacity: .8
            flat: true
        }
    }
}
