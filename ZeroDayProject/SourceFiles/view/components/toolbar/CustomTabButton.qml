import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

TabButton {
    property bool isSelected: false
    font.capitalization: Font.MixedCase
    font.bold: true
    width: Math.max(centerText.implicitWidth + 50, bar.width / 5)
    contentItem: Text {
        id: centerText
        text: parent.text
        font.pixelSize: 14
        font.bold: true
        font.family: "Open Sans"
        opacity: enabled ? 1.0 : 0.3
        color: isSelected ? Style.theme.sideBarIconFgActive : Style.theme.sideBarTextFg
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
}
