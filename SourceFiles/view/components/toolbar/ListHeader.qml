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

        CustomTabButton {
            text: qsTr("Boards")
            isSelected: bar.currentIndex == 0
        }
        CustomTabButton {
            text: qsTr("Diary")
            isSelected: bar.currentIndex == 1
        }
        CustomTabButton {
            text: qsTr("Archive")
            isSelected: bar.currentIndex == 2
        }
        CustomTabButton {
            text: qsTr("Catalan")
            isSelected: bar.currentIndex == 3
        }
        CustomTabButton {
            text: qsTr("Discover")
            isSelected: bar.currentIndex == 4
        }
    }
}
