import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import Style 1.0

import "../listDelegates"
import "../buttons"

Menu {
    id: cardMenu
    width: 150
    height: menus.height

    signal deleted
    signal duplicated

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
            samples: 2
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

                    onBtnClicked:{
                        duplicated()
                        cardMenu.close()
                    }
                }

                MenuRow{
                    mText: qsTr("Copy to...")
                }

                MenuRow{
                    mText: qsTr("Move to...")
                }

                Rectangle{
                    width: parent.width
                    height: 1
                    opacity: .1
                }

                MenuRow{
                    mText: qsTr("Share")
                }

                Rectangle{
                    width: parent.width
                    height: 1
                    opacity: .1
                }

                MenuRow{
                    mText: qsTr("Archive")
                }

                MenuRow{
                    mText: qsTr("Delete")
                    backgroundColor: Style.theme.boxTextFgError

                    onBtnClicked:{
                        deleted()
                        cardMenu.close()
                    }
                }
            }
        }
    }
}
