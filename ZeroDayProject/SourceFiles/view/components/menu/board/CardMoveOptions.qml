import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import Qt5Compat.GraphicalEffects

import Style 1.0

import "../../listDelegates/board"
import "../../buttons"

Menu {
    id: cardMoveMenu
    width: 150
    height: menus.height

    signal nextColClicked
    signal prevColClicked

    Item{
        id: container
        anchors.centerIn: parent
        width:  rect.width  + (2 * rectShadow.radius)
        height: rect.height + (2 * rectShadow.radius)
        antialiasing: true

        DropShadow {
            id: rectShadow
            anchors.fill: parent
            cached: true
            horizontalOffset: 3
            verticalOffset: 3
            radius: 1
//            //            samples: 2
            color: "#10000000"
            smooth: true
            source: rect
        }

        Rectangle{
            id: rect
            width: 150
            height: menus.height
            color: headerBox.color
            radius: 4

            Column{
                id: menus
                width: parent.width

                MenuRow{
                    mText: qsTr("Next Column")

                    onBtnClicked:{
                        nextColClicked()
                        cardMoveMenu.close()
                    }
                }

                MenuRow{
                    mText: qsTr("Prev Column")

                    onBtnClicked: {
                        prevColClicked()
                        cardMoveMenu.close()
                    }
                }
            }
        }
    }
}
