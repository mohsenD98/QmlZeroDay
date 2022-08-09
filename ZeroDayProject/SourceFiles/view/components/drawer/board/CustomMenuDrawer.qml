import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

Drawer{
    id: control
    width: Math.min(parent.width/1.4, 360)
    height: parent.height
    dim: true
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }
    background: Rectangle{
        color: headerBox.color

        Rectangle{
            id: accountInfo
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.left: parent.left
            height: 200
            color: "transparent"
        }
        Rectangle{
            id: menuBody
            anchors.top: accountInfo.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color: Style.theme.windowBg

            Button{
                onClicked: {
                    if(Style.currentThemeName === "DayCustomBaseColors")
                        Style.setTheme("NightColors")
                    else
                        Style.setTheme("DayCustomBaseColors")
                }
            }
        }
    }
}
