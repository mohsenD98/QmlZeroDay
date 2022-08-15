import QtQuick 2.12
import QtQuick.Controls 2.12
import Qt5Compat.GraphicalEffects

import Style 1.0

Rectangle{
    color: "transparent"
    radius: 5

    property alias menu: control
    signal colorSelected(var selColor)

    Popup{
        id: control
        padding: 10
        width: parent.width
        // Set background
        Item{
            id: container
            width:  parent.width
            height: 100
            antialiasing: true

            DropShadow {
                id: rectShadow
                anchors.fill: parent
                cached: true
                horizontalOffset: 3
                verticalOffset: 3
                radius: 1
//                //            samples: 2
                color: "#10000000"
                smooth: true
                source: bg
            }
            Rectangle{
                id: bg
                color: Style.theme.windowBg
                width: parent.width
                height: 100
                radius: 5
                border.width: 1
                border.color: Style.theme.sideBarIconFgActive


                Rectangle{
                    width: 8
                    height: 8
                    rotation: 45
                    color: Style.theme.windowBg
                    anchors.horizontalCenter: bg.horizontalCenter
                    anchors.bottom: bg.bottom
                    anchors.bottomMargin: -4
                    border.width: 1
                    border.color: Style.theme.sideBarIconFgActive
                }

                GridView{
                    anchors.fill: parent
                    anchors.margins: 2
                    anchors.centerIn: parent
                    cellWidth: parent.width/3 - 2
                    cellHeight: cellWidth
                    model: ["#F44336","#E91E63","#673AB7","#2196F3","#009688","#4CAF50","#FFC107","#795548","#607D8B"]
                    delegate: Rectangle{
                        width: parent.width/3 - 2
                        height:  width
                        radius: 4
                        color: modelData

                        MouseArea{
                            anchors.fill: parent
                            z:502
                            onClicked: colorSelected(modelData)
                        }
                    }
                }
            }
        }
    }
}

