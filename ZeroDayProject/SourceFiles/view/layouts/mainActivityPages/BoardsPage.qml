import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0
import MGram.sql.Kanban 1.0

import "../../components/listDelegates/board"
import "../../components/buttons"
import "../../components/drawer/board"
Rectangle {
    id:root
    color: "Transparent"

    function closeOverlay(){
        fab.controllerOptions.height = 0
        fab.closing = true
        moverlay.visible = !moverlay.visible

    }

    CustomPageDrawer{
        id: pageFrame
        edge: Qt.RightEdge
        dragMargin: 0
        interactive: false
    }

    Column{
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.margins: 4
        height: parent.height
        spacing: 4

        Repeater{
            id: kanbanRepeater
            model: SqlKanbanTableModel {}

            delegate: ScrumBoardDelegate{
                width: parent.width
                height: 80
                icon: "qrc:/icons/listItems/kanban.png"
                title: model.name?model.name:""
                lbl1: qsTr("Columns:  ")
                lbl1Optins: model.columns?model.columns:""
                lbl2: qsTr("Labels:   ")
                lbl2Options:  model.labels?model.labels.split(",").filter((a,i)=>i%2===0).join(" - "): ""
                imageBaseColor: Style.theme.sideBarIconFgActive

                onSelected: {
                    pageFrame.tableModel = model
                    pageFrame.index = index
                    pageFrame.sqlModel = kanbanRepeater.model

                    pageFrame.reset()
                    pageFrame.open()
                }

                onDeleteRequested: {
                    pageFrame.tableModel = model
                    pageFrame.index = index
                    pageFrame.sqlModel = kanbanRepeater.model

                    pageFrame.reset()
                    pageFrame.removeCardsInTable()
                    kanbanRepeater.model.removeTable(model.row)
                }

                onDuplicateRequested: {
                    console.log("under develop ...")
                }
                Component.onCompleted: {
                    pageFrame.tableModel = model
                }
            }
        }

        ScrumBoardDelegate{
            width: parent.width
            height: 80
            icon: "qrc:/icons/listItems/calendar.png"
            title: qsTr("Weekly Tasks")
            lbl1: qsTr("Columns:  ")
            lbl1Optins: qsTr("Saturday, Sunday, Monday, Tuesda...")
            lbl2: qsTr("Labels:   ")
            lbl2Options: qsTr("important, better Do, shoud Do")
            imageBaseColor: "#257862"

            onSelected: {
                snack.message = "Under Developement"
                snack.iconColor = imageBaseColor
                snack.open()
            }
        }

        ScrumBoardDelegate{
            width: parent.width
            height: 80
            icon: "qrc:/icons/listItems/timeline.png"
            title: qsTr("Time Line")
            lbl1: qsTr("Time:  ")
            lbl1Optins: qsTr("Custom 1 month")
            lbl2: qsTr("Features:   ")
            lbl2Options: qsTr("Fast, Easy, Beautifule")
            imageBaseColor: "#D90171"
            onSelected: {
                snack.message = "Under Developement"
                snack.iconColor = imageBaseColor
                snack.open()
            }
        }
    }

    Rectangle {
        id: moverlay
        anchors.fill: parent
        color: "#20000000"
        visible: false
        z: 1

        MouseArea {
            anchors.fill: parent
            onClicked: {
                closeOverlay()
            }
        }
    }

    FabMore {
        id: fab
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        icon: "+"
        enableText: true
        backgroundColor: "#1976D2"
        accentColor: "white"
        overlay: moverlay
        z: 2
        model: [{
                "name": "Add Kanban",
                "icon": "+",
                "baseColor": "#5eb5f7"
            }, {
                "name": "Add Weekly",
                "icon": "+",
                "baseColor": "#257862"
            }, {
                "name": "Add timeLine",
                "icon": "+",
                "baseColor": "#D90171"
            }]

        onItemCalled: {
            closeOverlay()

            if(item === "Add Kanban"){
                kanbanRepeater.model.addTabel("Tap To Set Title table _ "+kanbanRepeater.model.rowCount(), 'To Do,In Progress,Done','Feature,#1F7E38,Important,#B6AA37,Bug,#BC2E2A')
            }
            if(item === "Add Weekly"){
                console.log("under develop")
            }
        }
    }
}
