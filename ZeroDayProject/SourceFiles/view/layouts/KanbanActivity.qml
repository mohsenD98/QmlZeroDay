import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0
import MGram.sql.Kanban 1.0


import "../components/toolbar"
import "../components/editField"
import "../components/listDelegates/board"
import "../components/drawer/board"

Rectangle {
    id:root
    anchors.fill: parent
    color: "transparent"

    property string name
    property string columns
    property string labels

    signal tableNameChanged(var tbNewName)
    signal addTableLabel(var lblName, var lblColor)

    function removeAllCardsInTable(){
        for(var i=0; i<colsRepeater.count; ++i){
            colsRepeater.itemAt(i).removeAllCardsInTable()
        }
    }

    function reset(){
        colsRepeater.kanbanBoardName = name
        colsRepeater.model = columns.split(",")

        for(var i=0; i<colsRepeater.count; ++i){
            colsRepeater.itemAt(i).reset()
        }
        resetLbls();
    }

    function resetLbls(){
        var labelsTempData = []
        for(var i=0; i<(labels.split(",").length)-1; i+=2){
            labelsTempData.push({
                                mText: labels.split(",")[i],
                                mColor: labels.split(",")[i+1],
                                lblIsSelected: false
                            })
        }
        addNewCard.lblData = labelsTempData
    }
    Rectangle{
        anchors.fill: parent
        z: -1
        Image{
            anchors.fill: parent
            source: Style.theme.appBackgroundImg
        }
    }

    BoardHeaderLayout{
        id: header
        width: parent.width
        height: 55
        color: "#242f3d"

        onApplogoClicked: pageFrame.close()
    }

    EditableText{
        id: editableName
        anchors.top: header.bottom
        anchors.topMargin: 8
        height: 35
        anchors.left: parent.left
        anchors.leftMargin: 8
        currentText: colsRepeater.kanbanBoardName

        onInputTextChanged: {
            tableNameChanged(newName)

            for(var i=0 ; i<columns.split(",").length; ++i){
                colsRepeater.itemAt(i).kanbanName = newName
            }

            for(var i=0 ; i<columns.split(",").length; ++i){
                colsRepeater.itemAt(i).reset()
            }
        }
    }

    GlowingSearchBar{
        id: searchBar
        anchors.top: editableName.bottom
        anchors.topMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 8
        height: 35

        onSearchInCards: {
            for(var i=0; i< colsRepeater.count; ++i){
                colsRepeater.itemAt(i).setSqlFilter(text)
            }
        }
    }

    Rectangle{
        anchors.top: searchBar.bottom
        anchors.topMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 4
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 8
        anchors.rightMargin: 8
        clip: true
        color: "transparent"

        Flickable{
            anchors.fill: parent
            contentWidth: cardColumns.implicitWidth
            contentHeight: cardColumns.implicitHeight

            onDraggingChanged: {
                searchBar.setTextInputFocuse(false)
            }

            Row{
                id: cardColumns
                width: 3*250 + 10
                height: root.height
                spacing: 8
                clip: false

                Repeater{
                    id: colsRepeater
                    model: columns
                    clip: false
                    property string kanbanBoardName

                    onKanbanBoardNameChanged: {
                        editableName.currentText = kanbanBoardName
                    }

                    delegate: BoardCardColumn{
                        title: modelData
                        kanbanName: colsRepeater.kanbanBoardName
                        allCols: columns
                        clip: false

                        onReloadCols: {
                            for(var i=0 ; i<columns.split(",").length; ++i){
                                colsRepeater.itemAt(i).reset()
                            }
                        }
                    }
                }
            }
        }
    }

    CustomAddCardDrawer{
        id: addNewCard
        edge: Qt.RightEdge
        width: parent.width/3 * 2
        height: parent.height

        onAddNewLabel: {
            addTableLabel(lbl, col)
        }
    }
}
