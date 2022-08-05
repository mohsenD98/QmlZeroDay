import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

Rectangle {
    id:root
    color: "Transparent"

    RoundButton{
        id: devLogo
        anchors.centerIn: parent
        icon.source: "qrc:/../icons/intro_right@3x.png"
        flat: true
        width: parent.width / 3
        height: width
        icon.width: parent.width / 3
        icon.height: width
        opacity: .6
        icon.color: Style.theme.historyTextInFgSelected
    }

    Text {
        text: qsTr("Under Develope...")
        font.pixelSize: 18
        font.family: "Open Sans"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: devLogo.bottom
        anchors.topMargin: -32
        font.bold: true
        opacity: .7
        color: Style.theme.historyTextInFgSelected
    }
}
