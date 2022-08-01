import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../../../layouts"

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
    property var tableModel
    property var sqlModel
    property var index

    function reset(){
        board.name= tableModel.name
        board.columns= tableModel.columns
        board.labels= tableModel.labels
        board.reset()
    }

    background: Rectangle{
        color: Style.theme.windowBg

        KanbanActivity{
            id: board
            anchors.fill: parent

            onTableNameChanged: {
                control.sqlModel.updateTableName(control.index, tbNewName)
            }
            onAddTableLabel:{
                control.sqlModel.addTableColor(control.index, board.labels + "," + lblName + "," + lblColor)
                control.reset()
                reset()
            }
        }
    }
}
