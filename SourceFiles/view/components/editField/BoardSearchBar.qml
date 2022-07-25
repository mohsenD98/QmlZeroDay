import QtQuick 2.12

import Style 1.0

Rectangle{
    id: root
    border.color: searchInput.activeFocus? Style.theme.sideBarIconFgActive : Style.theme.sideBarTextFg
    border.width: 2
    radius: 2
    color: "transparent"

    TextInput{
        id: searchInput
        anchors.fill: parent
        anchors.margins: 8
        font.family: "Open Sans"
        color: Style.theme.dialogsTextFgActive
    }

    Text {
        text: qsTr("Filter cards on this board... (example: infinity stone)")
        anchors.fill: parent
        anchors.margins: 8
        color: Style.theme.sideBarTextFg
        visible: !searchInput.activeFocus
        font.family: "Open Sans"
    }


}
