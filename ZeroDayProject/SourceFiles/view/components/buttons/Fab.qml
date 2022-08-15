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

    signal fabClicked

    property color backgroundColor
    property string btnText

    Material.background: backgroundColor

    Text {
        text: btnText
        font.pixelSize: 35
        opacity: enabled ? 1.0 : 0.3
        color: "white"
        anchors.centerIn: parent
//        elide: Text.ElideRight

    }
    onClicked: {
       fabClicked()
    }
}

