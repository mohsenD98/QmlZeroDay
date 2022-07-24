import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

TabButton {
    property bool isSelected: false
    font.capitalization: Font.MixedCase
    font.bold: true
    contentItem: Text {
        text: parent.text
        font: parent.font
        opacity: enabled ? 1.0 : 0.3
        color: isSelected ? Style.theme.sideBarIconFgActive : Style.theme.sideBarTextFg
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

}
