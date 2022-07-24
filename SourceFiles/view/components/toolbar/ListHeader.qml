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
        TabButton {
            text: qsTr("Calendar")
            font.capitalization: Font.MixedCase
        }
        TabButton {
            text: qsTr("Messages")
            font.capitalization: Font.MixedCase
        }
        TabButton {
            text: qsTr("Archive")
            font.capitalization: Font.MixedCase
        }
        TabButton {
            text: qsTr("Profile")
            font.capitalization: Font.MixedCase
        }
        TabButton {
            text: qsTr("Discover")
            font.capitalization: Font.MixedCase
        }
    }
}
