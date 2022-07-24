import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../components/toolbar"
import "../components/buttons"
import "../components/drawer"
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
        currentIndex: bar.currentSelectedBarIndex
        onCurrentIndexChanged: bar.setIndex(currentIndex)
        Repeater {
            model: 5
            Loader {
                active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem
                sourceComponent: Rectangle {
                    color: "transparent"
                    Text {
                        anchors.centerIn: parent
                        color: "white"
                        text: index
                    }
                }
            }
        }
    }

    Fab {
        width: 62
        height: width
        radius: width/2
        color: Style.theme.dialogsBgActive
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 20
    }

    CustomDrawer{
        id: mainMenu
        edge: Qt.LeftEdge
    }
}
