import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import Style 1.0

import "../../tools"


RoundButton {
    id: fab
    width: 80
    height: 80
    anchors.bottom: parent.bottom
    anchors.right: parent.right
    anchors.margins: 20
    highlighted: true
    smooth: true
    text: "+"

    signal fabClicked

    property color backgroundColor

    Material.background: backgroundColor
    contentItem: Text {
        text: fab.text
        font.pixelSize: 35
        opacity: enabled ? 1.0 : 0.3
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight

    }
    onClicked: {
       fabClicked()
    }
}

