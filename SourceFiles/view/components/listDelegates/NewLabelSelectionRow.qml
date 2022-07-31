import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../../tools"
import "../editField"
import "../dialog"
import "../buttons"

Rectangle{
    width: parent.width
    color: "transparent"
    height: 35

    property color mColor
    property string mText
    property bool lblIsSelected

    signal emitError(var msg)
    signal insertNewLabel(var lblName, var lblColor)

    function reset(){
        lblColor.color = mColor
        lblText.currentText = mText
        lblText.mainControl.focus = false
    }

    RoundButton{
        id: lblAdded
        icon.source: "qrc:/../icons/passport_ready@3x.png"
        anchors.verticalCenter: parent.verticalCenter
        visible: lblIsSelected
        flat: true
        width: 40
        height: 40
        opacity: .5
    }

    Rectangle{
        id: lblColor
        anchors.left:  lblAdded.right
        anchors.leftMargin: 0
        width: parent.height - 15
        height: width
        radius: 4
        color: mColor
        anchors.verticalCenter: parent.verticalCenter
        border.width: 1
        border.color: Style.theme.sideBarIconFgActive
        z: 501

        MouseArea{
            anchors.fill: parent
            z: 501
            onClicked: {
                colorDialog.y = lblColor.y - colorDialog.height
                colorDialog.menu.open()
            }
        }
    }

    EditableText {
        id: lblText
        anchors.left: lblColor.right
        anchors.margins: 16
        anchors.verticalCenter: parent.verticalCenter
        currentText: mText
        textSize: 10
        textColor: Style.theme.sideBarTextFg
        z:500
        width: 200
        height: 35
    }

    GlowingButton{
        title: "CONFIRM"
        glowColor: Style.theme.sideBarIconFgActive
        baseColor: headerBox.color
        anchors.verticalCenter: lblColor.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 8
        baseHeight: 25
        z: 503
        onBtnClicked:{
            console.log(lblColor.color)
            if(lblColor.color == "#00000000"){
                emitError("Select color please ...")
                return
            }

            if(lblText.currentText === "Click To Enter New Label"){
                emitError("Enter Text please ...")
                return
            }

            if(lblText.mainControl.text !== "")
                insertNewLabel(lblText.mainControl.text, lblColor.color)
            else
                insertNewLabel(lblText.currentText, lblColor.color)
        }
    }

    ColorSelectionDialog{
        id: colorDialog
        width: 95
        height: 100
        anchors.bottom: lblColor.top

        onColorSelected: {
            lblColor.color = selColor
        }
    }

    MouseArea{
        id: mouse
        anchors.fill: parent
        z:100
        onClicked: {
        }
    }
}
