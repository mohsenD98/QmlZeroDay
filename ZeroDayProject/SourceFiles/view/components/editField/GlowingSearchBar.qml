import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

Rectangle{
    id: root
    border.color: searchInput.activeFocus? Style.theme.sideBarIconFgActive : Style.theme.sideBarTextFg
    border.width: 2
    radius: 2
    color: "transparent"

    signal searchInCards(var text)

    function setTextInputFocuse(f){
        searchInput.focus = f
    }

    RoundButton{
        id: clear
        icon.source: "qrc:/../icons/history_file_cancel@3x.png"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.verticalCenter: parent.verticalAlignment
        flat: true
        width: parent.height
        height: width
        opacity: .8
        z: 3
        icon.color: Style.theme.historyTextInFgSelected
        visible: searchInput.activeFocus
        onPressed: {
            searchInput.text = ""
            focus = false
        }
    }

    TextInput{
        id: searchInput
        anchors.fill: parent
        anchors.margins: 8
        anchors.leftMargin: 25
        leftPadding: 18
        font.family: "Open Sans"
        color: Style.theme.historyTextInFgSelected

        Keys.onEnterPressed: {
            if(text === "") focus = false
            searchInCards(text)
        }
        Keys.onReturnPressed: {
            if(text === "") focus = false
            searchInCards(text)
        }
    }

    Text {
        text: qsTr("Filter cards on this board... (example: infinity stone)")
        anchors.fill: parent
        anchors.margins: 8
        color: Style.theme.historyTextInFgSelected
        visible: !searchInput.activeFocus
        font.family: "Open Sans"
    }
}
