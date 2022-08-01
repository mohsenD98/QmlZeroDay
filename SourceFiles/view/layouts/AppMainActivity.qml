import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../components/toolbar"
import "../components/drawer/board"
import "../tools"

Rectangle {
    id:root
    anchors.fill: parent
    color: Style.theme.windowBg

    Rectangle{
        id:headerBox
        width: parent.width
        height: titleCol.implicitHeight
        color: Style.theme.titleBgActive

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
            }
            ListHeader{
                id: bar
                width: parent.width
                color: "transparent"

            }
        }
    }

    SwipeView{
        anchors.top: headerBox.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 8
        currentIndex: bar.currentSelectedBarIndex
        onCurrentIndexChanged: bar.setIndex(currentIndex)
        Repeater {
            model: ["qrc:/layouts/mainActivityPages/BoardsPage.qml",
                "qrc:/layouts/mainActivityPages/ConversationPage.qml",
                "qrc:/layouts/mainActivityPages/PlaceHolderPage.qml",
                "qrc:/layouts/mainActivityPages/PlaceHolderPage.qml",
                "qrc:/layouts/mainActivityPages/PlaceHolderPage.qml"]
            Loader {
                active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem
                source: modelData
            }
        }
    }

    CustomMenuDrawer{
        id: mainMenu
        edge: Qt.LeftEdge
    }
    CustomPageDrawer{
        id: pageFrame
        edge: Qt.RightEdge
        dragMargin: 0
        interactive: false
    }
}
