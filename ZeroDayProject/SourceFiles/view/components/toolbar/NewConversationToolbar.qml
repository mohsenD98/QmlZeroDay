import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import Style 1.0

Item{
    id: container
    width:  parent.width
    height: 70
    antialiasing: true

    property color backgroundColor

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
            scale: 1.4

            onClicked: addConversationFrame.close()
        }

        Rectangle{
            anchors.left: backBtn.right
            anchors.verticalCenter: parent.verticalCenter
            color: "transparent"
            height: namelbl.implicitHeight
            width: namelbl.implicitWidth

            Text {
                id: namelbl
                text: "New Conversation"
                font.bold: true
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 18
                font.family: "Open Sans"
            }
        }

        RoundButton{
            id: filter
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: -4
            height: 40
            width: height
            icon.source: "qrc:/../icons/contacts_online@3x.png"
            opacity: .8
            flat: true
            scale: 1.4
        }

        RoundButton{
            id: call
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: filter.left
            anchors.rightMargin: -4
            icon.source: "qrc:/../icons/info/info_search@3x.png"
            opacity: .8
            flat: true
            scale: 1.4
        }
    }
}
