import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12


Rectangle {
    height: 60
    width: lblBox.width + fab.width + 30 // margins
    color: "transparent"

    signal selected(var optionName)

    RoundButton {
        id: fab
        width: 50
        height: 50
        anchors.right: parent.right
        highlighted: true
        smooth: true

        Material.background: le_color

        Text {
            text: le_icon
            font.pixelSize: 24
            opacity: enabled ? 1.0 : 0.3
            color: "white"
            anchors.centerIn: parent
        }

        onClicked: selected(le_name)
    }

    Rectangle {
        id: lblBox
        visible: le_showText
        anchors.right: fab.left
        anchors.rightMargin: 8
        anchors.verticalCenter: fab.verticalCenter
        width: optionName.width * 1.4
        height: 28
        color: le_color
        radius: 4
        Text {
            id: optionName
            text: le_name
            anchors.centerIn: parent
            font.pixelSize: 14
            font.bold: true
            color: "white"
        }
    }
}
