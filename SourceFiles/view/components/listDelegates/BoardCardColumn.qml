import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

import Style 1.0

import "../../tools"
import "../../components/buttons"

Rectangle {
    id: root
    radius: 2
    color: Style.theme.titleBgActive
    clip: true

    width: simpleView? 35 : 250
    height: simpleView? parent.height - 8 : cardsCol.height + smallestHeight

    property real smallestHeight : 100
    property string  title
    property bool simpleView: false

    Behavior on width{
        NumberAnimation{
            duration: 140
        }
    }

    Row{
        id: columnCollapsorRow
        anchors.left: parent.left
        width: 40
        height: 35
        anchors.leftMargin: -4
        anchors.verticalCenter: plusCard.verticalCenter
        rotation: !simpleView? 0 : 90

        RoundButton{
            id: columnCollapsor
            width: 35
            height: width
            y: simpleView? 0 : 0
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "qrc:/../icons/media_play@3x.png"
            opacity: .5
            flat: true
            onClicked: {
                simpleView = !simpleView
            }
        }

        Text {
            id: titleLabel
            text: title
            color: Style.theme.dialogsTextFgActive
            anchors.verticalCenter: columnCollapsor.verticalCenter
            font.pixelSize: 12
            font.family: "Open Sans"
        }

    }

    Text {
        id: numberOfCards
        text: "1 card"
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: columnCollapsorRow.bottom
        anchors.topMargin: -6
        visible: !simpleView
        color: Style.theme.dialogsTextFgActive
        font.pixelSize: 10
        font.family: "Open Sans"
        opacity: .5
    }

    RoundButton{
        id: plusCard
        anchors.top: parent.top
        anchors.right: options.left
        anchors.rightMargin: -15
        width: 45
        height: width
        visible: !simpleView
        icon.source: "qrc:/../icons/settings/add@3x.png"
        opacity: .5
        flat: true
    }

    RoundButton{
        id: options
        anchors.right: parent.right
        anchors.rightMargin: -8
        anchors.verticalCenter: plusCard.verticalCenter
        width: 40
        height: width
        visible: !simpleView
        icon.source: "qrc:/../icons/mediaview_more@3x.png"
        opacity: .5
        flat: true
    }

    Column{
        id: cardsCol
        anchors.top: columnCollapsorRow.bottom
        anchors.topMargin: 18
        visible: !simpleView
        anchors.right: parent.right
        anchors.left: parent.left
        spacing: 8

        BoardCard{
            id: card1
            title: "Enter your work items in this column, then drag them to 'In Progress' when you are ready to start working on them."
            labelsModel: [{"title":"fantastic", "color":"#1F7E38"}]
            onCardSelected: {
                card2.glowing = false
                card3.glowing = false
            }
        }
        BoardCard{
            id: card2
            title: "Enter your work items in this column, then drag them to 'In Progress' when you are ready to start working on them."
            labelsModel: [{"title":"fantastic", "color":"#1F7E38"}, {"title":"Bug", "color":"#BC2E2A"}]
            onCardSelected: {
                card1.glowing = false
                card3.glowing = false
            }
        }
        BoardCard{
            id: card3
            title: "Enter your work items in this column, then drag them to 'In Progress' when you are ready to start working on them."
            labelsModel: [{"title":"Exelent", "color":"#B6AA37"}]
            onCardSelected: {
                card1.glowing = false
                card2.glowing = false
            }
        }

    }


  CustomButton{
      title: qsTr("Add a card")
      color: "transparent"
      visible: !simpleView
      textColor: Style.theme.sideBarIconFgActive
      anchors.bottom: parent.bottom
      anchors.left: parent.left
      anchors.margins: 4
      radius: 4
      onBtnClicked: {

      }
  }
}
