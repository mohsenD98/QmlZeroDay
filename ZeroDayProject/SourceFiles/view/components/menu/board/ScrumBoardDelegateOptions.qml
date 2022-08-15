import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import Qt5Compat.GraphicalEffects

import Style 1.0

import "../../listDelegates/board"
import "../../buttons"

Menu {
    id: scrumBoardDelMenu
    width: 150
    height: menus.height

    signal duplicateClicked
    signal deleteClicked

    background: Item{
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
            //            samples: 2
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
                    mText: qsTr("Duplicate")
                    enabled: false
                    opacity: enabled? 1 : .5

                    onBtnClicked:{
                        duplicateClicked()
                        scrumBoardDelMenu.close()
                    }
                }

                MenuRow{
                    mText: qsTr("Delete")
                    backgroundColor: Style.theme.boxTextFgError

                    onBtnClicked: {
                        deleteClicked()
                        scrumBoardDelMenu.close()
                    }
                }
            }
        }
    }
}
