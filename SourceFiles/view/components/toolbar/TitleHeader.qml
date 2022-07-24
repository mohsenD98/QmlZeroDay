import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

Rectangle {
    RoundButton{
        id: menuBtn
        icon.source: "qrc:/../icons/dialogs/dialogs_menu@3x.png"
        flat: true
    }
    Text {
        id: appTitle
        text: qsTr("Routine")
        anchors.verticalCenter: menuBtn.verticalCenter
        anchors.left: menuBtn.right
        anchors.leftMargin: 8
        color: "white"
        font.pixelSize: 14
        font.family: "Open Sans"
        font.bold: true
    }
    RoundButton{
        id: searchBtn
        anchors.right: parent.right
        icon.source: "qrc:/../icons/info/info_search@3x.png"
        flat: true
    }
}
