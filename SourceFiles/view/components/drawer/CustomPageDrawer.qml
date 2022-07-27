import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../../layouts"

Drawer{
    id: control
    width: parent.width
    height: parent.height
    dim: true
    edge: Qt.rightEdge
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"
    }
    property string mName
    property string mColumns
    property string mLabels

    function reset(){
        board.name= mName
        board.columns= mColumns
        board.labels= mLabels

        board.reset()
    }

    background: Rectangle{
        color: Style.theme.windowBg

        KanbanActivity{
            id: board
            name: mName
            columns: mColumns
            labels: mLabels
            anchors.fill: parent
        }
    }
}
