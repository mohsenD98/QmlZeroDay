import QtQuick 2.12

import Style 1.0

import "../../tools"

Rectangle{
    id: fab

    signal fabClicked

    Text {
        text: qsTr("+")
        font.pixelSize: 22
        anchors.centerIn: parent
        color: Style.theme.dialogsTextFgActive
    }

    MouseArea{
        id: fabBtnMouseArea
        anchors.fill: parent
        onClicked: fabClicked()
    }

    RippleLayout{
        anchors.fill: fab
        mouseArea: fabBtnMouseArea
        mRadius: fab.radius
    }
}
