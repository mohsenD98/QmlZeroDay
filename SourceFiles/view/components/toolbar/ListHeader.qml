import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0

import Style 1.0

Rectangle {
    anchors.fill: parent
    color: Style.theme.windowBg

    Rectangle{
        width: parent.width
        height: 120
        color: Style.theme.titleBgActive

        Column{
            Rectangle{
                height: parent.height/2
                width: parent.width
                color: "transparent"
            }

            Rectangle{
                height: parent.height/2
                width: parent.width
                color: "transparent"
            }
        }
    }
}
