import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../components/toolbar"
import "../components/drawer/board"
import "../tools"

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
        contentItem: ListView {
            model: swipeView.contentModel
            interactive: swipeView.interactive
            currentIndex: swipeView.currentIndex

            spacing: swipeView.spacing
            orientation: swipeView.orientation
            snapMode: ListView.SnapOneItem
            boundsBehavior: Flickable.StopAtBounds

            highlightRangeMode: ListView.StrictlyEnforceRange
            preferredHighlightBegin: 0
            preferredHighlightEnd: 0
            highlightMoveDuration: 250

            maximumFlickVelocity: 8 * (swipeView.orientation ===
            Qt.Horizontal ? width : height)
        }

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
}
