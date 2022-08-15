import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../components/toolbar"
import "../components/drawer/board"
import "../components/drawer/conversation"
import "../tools"
import "../components/snackbar"

Rectangle {
    id:root
    anchors.fill: parent
    color: "transparent"

    property bool conversationSelected: false

    Rectangle{
        id:headerBox
        width: parent.width
        height: titleCol.implicitHeight
        color: conversationSelected? "#17212b": "#242f3d"

        Column{
            width: parent.width
            id: titleCol
            TitleHeader{
                height: 50
                width: parent.width
                color: "transparent"
                onSettingsBtnClicked:{
                    mainMenu.open()
                }
                visible: !conversationSelected
            }

            OptionalHeader{
                id: optionalHeader
                height: 50
                width: parent.width
                color: "transparent"
                clip: true

                visible: conversationSelected
                counter: "1"

                onDeleteRequested: {
                    pageRepeater.itemAt(1).item.deleteSelected()
                }
                onCancelRequested :{
                    pageRepeater.itemAt(1).item.deSelectAll()
                }
                onOpenMultiple: {
                    if(pageRepeater.itemAt(1).item.selectedChats.length <= 4){
                        multiOpenDrawer.setSelectedChats(pageRepeater.itemAt(1).item.selectedChats)
                        multiOpenDrawer.open()
                    }
                    // TODO: Toast that only 4 page should be open in same time!

                }
            }
            ListHeader{
                id: bar
                width: parent.width
                color: "transparent"

            }
        }
    }

    Rectangle{
        anchors.fill: parent
        z: -1
        Image{
            anchors.fill: parent
            source: Style.theme.appBackgroundImg
        }
    }

    SwipeView{
        id: swipeView
        anchors.top: headerBox.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 8
        currentIndex: bar.currentSelectedBarIndex
        onCurrentIndexChanged: bar.setIndex(currentIndex)

        function conversationHoldingHandler(numberOfSelecteds){
            conversationSelected = numberOfSelecteds>0
            optionalHeader.counter = numberOfSelecteds
        }

        Repeater {
            id: pageRepeater
            model: ["qrc:/layouts/mainActivityPages/BoardsPage.qml",
                "qrc:/layouts/mainActivityPages/ConversationPage.qml",
                "qrc:/layouts/mainActivityPages/PlaceHolderPage.qml"]

            Loader {
                id: pageLoader
                active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem
                source: modelData

                onLoaded: {
                    if( typeof pageLoader.item.holdingConversationStateChanged === "function" )
                        pageLoader.item.holdingConversationStateChanged.connect(swipeView.conversationHoldingHandler)
                }
            }
        }
    }

    CustomMenuDrawer{
        id: mainMenu
        edge: Qt.LeftEdge
    }

    MultiConversationDrawer{
        id: multiOpenDrawer
        edge: Qt.RightEdge
        dragMargin: 0
    }

    Snackbar{
        id: snack
        anchors.bottom: parent.bottom
        delayTime: 2500
        color: Style.theme.titleBgActive
        messageColor: Style.theme.historyTextOutFg
        iconColor: Style.theme.historyTextOutFg
        z: -1
    }
}
