import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

Rectangle {
    height: bar.height
    property real currentSelectedBarIndex: bar.currentIndex

    function setIndex(index){
        bar.setCurrentIndex(index)
    }

    TabBar {
        id: bar
        width: parent.width
        Material.accent: Style.theme.sideBarIconFgActive
        Material.background: "transparent"

        Repeater {
            model: ["Boards", "Conversations", "Diary", "Catalan", "Discover"]

            CustomTabButton {
                text: modelData
                isSelected: bar.currentIndex == index
            }
        }
        contentItem: ListView {
             model: bar.contentModel
             currentIndex: bar.currentIndex

             spacing: bar.spacing
             orientation: ListView.Horizontal
             boundsBehavior: Flickable.StopAtBounds
             flickableDirection: Flickable.HorizontalFlick
             snapMode: ListView.SnapToItem

             highlightMoveDuration: 250
             highlightResizeDuration: 0
             highlightFollowsCurrentItem: true
             highlightRangeMode: ListView.ApplyRange
             preferredHighlightBegin: 0
             preferredHighlightEnd: width - 0

             highlight: Item {
                 z: 2
                 Rectangle {
                     id: roundRect
                     height: 4
                     width: parent.width / 3 * 2
                     anchors.horizontalCenter: parent.horizontalCenter
                     y: bar.position === TabBar.Footer ? 0 : parent.height - height
                     color: bar.Material.accentColor
                     radius: 10
                 }
                 Rectangle {
                   id: squareRect
                   color: bar.Material.accentColor
                   height: 1
                   anchors.bottom : roundRect.bottom
                   anchors.left : roundRect.left
                   anchors.right : roundRect.right
                 }
             }
        }
    }
}
