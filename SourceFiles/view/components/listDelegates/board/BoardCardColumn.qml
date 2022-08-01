import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

import Style 1.0
import MGram.sql.Kanban 1.0

import "../../../tools"
import "../../../components/buttons"
import "../../../components/dragableLayout"

Rectangle {
    id: root
    radius: 2
    color: Style.theme.titleBgActive
    clip: false

    width: simpleView? 35 : 250
    height: simpleView? parent.height - 8 : cardsCol.height + smallestHeight

    property real smallestHeight : 100
    property string  title
    property bool simpleView: false
    property string kanbanName
    property string allCols

    signal reloadCols

    function reset(){
        cardsCol.mKanbanTableId = kanbanName
        cardsCol.allColIds = allCols
        cardsCol.reset()
    }

    function setSqlFilter(text){
        cardsCol.setSqlFilter(text)
    }

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
        clip: false

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

        onClicked: {
            addNewCard.refrenceCol = cardsCol
            addNewCard.open()
        }
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

    DragableColumn{
        id: cardsCol
        anchors.top: columnCollapsorRow.bottom
        anchors.topMargin: 18
        visible: !simpleView
        anchors.right: parent.right
        anchors.left: parent.left
        colName: title
        clip: false

        onReloadAll: {
            reloadCols()
        }

        onEditCardRequest: {
            addNewCard.refrenceCol = cardsCol
            addNewCard.title = "Edit card"
            addNewCard.editing = true
            addNewCard.prevLbls =  cardLbls
            addNewCard.prevTitle = cardName
            addNewCard.updateDesc()
            addNewCard.updateLabels()
            addNewCard.open()
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
            addNewCard.refrenceCol = cardsCol
            addNewCard.open()
        }
    }
}
