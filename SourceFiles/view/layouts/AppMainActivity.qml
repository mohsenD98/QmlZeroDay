import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../components/toolbar"

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
}
