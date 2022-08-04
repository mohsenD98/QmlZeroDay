import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../../toolbar"

Rectangle {
    id:root
    anchors.fill: parent
    color: Style.theme.windowBg

    NewConversationToolbar{
        id: header
        width: parent.width
        height: 45
        backgroundColor: Style.theme.titleBgActive
    }

}
