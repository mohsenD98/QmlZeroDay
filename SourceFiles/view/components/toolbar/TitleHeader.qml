import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

Rectangle {
    signal settingsBtnClicked
    RoundButton{
        id: menuBtn
        icon.source: "qrc:/../icons/dialogs/dialogs_menu@3x.png"
        flat: true
        onClicked: settingsBtnClicked()
    }
    Text {
        id: appTitle
        text: qsTr("Routine")
        anchors.verticalCenter: menuBtn.verticalCenter
        anchors.left: menuBtn.right
        anchors.leftMargin: 8
        color: Style.theme.dialogsTextFgActive
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
