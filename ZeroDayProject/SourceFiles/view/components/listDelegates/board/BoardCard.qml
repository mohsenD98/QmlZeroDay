import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.12

import Style 1.0

import "../../../tools"
import "../../menu/board"

Item {
    width: parent.width
    height: visible? rect.height : 0

    property bool glowing: false
    property string title
    property var labels
    property var time
    property var labelsModel: []

    signal deleteRequest
    signal duplicateRequest
    signal editRequest

    onLabelsChanged: {
        var splitted = labels.split(",")
        if(splitted.length % 2 == 1){
            splitted = splitted.slice(0,splitted.length-1)
        }

        for(var i=0; i<splitted.length; i= i+2){
            labelsModel.push({title:splitted[i] , color:splitted[i+1]})
        }
    }

    Rectangle {
        id: background
        anchors.fill: parent
        color: "transparent"
    }

    RectangularGlow {
        id: effect
        anchors.fill: rect
        glowRadius: 2
        spread: 0.2
        visible: glowing
        color: Style.theme.sideBarIconFgActive
        cornerRadius: rect.radius + glowRadius
    }

    Rectangle {
        id: rect
        color: "#2C3F51"
        border.color: Style.theme.sideBarIconFgActive
        border.width: glowing? 2: 0
        opacity: 1
        anchors.centerIn: parent
        width: parent.width - 12
        height: 140//inpText.implicitHeight * 1.3 + labelsFlow.height + 10
        radius: 4

        RoundButton{
            id: options
            anchors.right: parent.right
            anchors.rightMargin: -8
            anchors.top: parent.top
            width: 35
            height: width
            icon.source: "qrc:/../icons/mediaview_more@3x.png"
            opacity: .5
            flat: true

            onClicked: cardMenuOptions.open()
        }

        CardMenuOptions{
            id: cardMenuOptions
            x: options.x + options.width/2
            y: options.y + options.height

            onDeleted:{
                deleteRequest()
            }
            onDuplicated: {
                duplicateRequest()
            }
            onEdited: {
                editRequest()
            }
        }

        Text {
            id: inpText
            text: title
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 8
            wrapMode: Text.WordWrap
            color: Style.theme.dialogsTextFgActive
            font.pixelSize: 12
            font.family: "Open Sans"
        }

        Flow{
            id: labelsFlow
            anchors.bottom: dateText.top
            anchors.bottomMargin: 8
            anchors.leftMargin: 8
            anchors.rightMargin: 8
            anchors.left: parent.left
            anchors.right: parent.right
            height: childrenRect.height
            spacing: 8

            Repeater{
                model: labelsModel
                delegate: CardLabel{
                    title: modelData.title
                    labelColor: modelData.color
                }

            }
        }

        Text {
            id: dateText
            text: Qt.formatDateTime(time, "d MM hh:mm")
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            wrapMode: Text.WordWrap
            color: Style.theme.dialogsTextFgActive
            font.pixelSize: 8
            opacity: .5
            font.family: "Open Sans"
        }

    }

}
