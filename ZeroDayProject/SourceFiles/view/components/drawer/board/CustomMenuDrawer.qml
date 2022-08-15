import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls.Material 2.15

import Style 1.0

Drawer{
    width: Math.min(parent.width/1.4, 360)
    height: parent.height
    dim: true
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }
    Rectangle{
        anchors.fill: parent
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

            RoundButton{
                width: 100
                height: 45
                flat: true
                text: "change theme"
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
