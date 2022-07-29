import QtQuick 2.12

import Style 1.0

Rectangle{
    id: root
    border.color: searchInput.activeFocus? Style.theme.sideBarIconFgActive : "transparent"
    border.width: 2
    radius: 2
    color: "transparent"
    width: 250

    property string currentText
    property real textSize: 14

    signal boardNameChanged(var newName)

    TextInput{
        id: searchInput
        width: parent.width
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 8
        font.family: "Open Sans"
        text: searchInput.activeFocus?currentText : ""

        color: Style.theme.dialogsTextFgActive

        Keys.onEnterPressed: {
            currentText = text
            boardNameChanged(searchInput.text)
            searchInput.focus = false
        }
        Keys.onReturnPressed: {
            currentText = text
            boardNameChanged(searchInput.text)
            searchInput.focus = false
        }
    }

    Text {
        id: showingText
        text: currentText
        width: parent.width
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 8
        color: "white"
        visible: !searchInput.activeFocus
        font.family: "Open Sans"
        font.pixelSize: textSize
    }
}
