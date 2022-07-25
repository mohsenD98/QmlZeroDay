import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../../components/listDelegates"

Rectangle {
    id:root
    color: "Transparent"

    Column{
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.margins: 4
        height: parent.height
        spacing: 4

        ScrumBoardDelegate{
            width: parent.width
            height: 80
            icon: "qrc:/icons/listItems/kanban.png"
            title: qsTr("Kanaban Board")
            lbl1: qsTr("Columns:  ")
            lbl1Optins: qsTr("ToDo, InProgress, Done")
            lbl2: qsTr("Labels:   ")
            lbl2Options: qsTr("important, better Do, shoud Do")
            imageBaseColor: Style.theme.sideBarIconFgActive

            onSelected: pageFrame.open()
        }
        ScrumBoardDelegate{
            width: parent.width
            height: 80
            icon: "qrc:/icons/listItems/calendar.png"
            title: qsTr("Weekly Tasks")
            lbl1: qsTr("Columns:  ")
            lbl1Optins: qsTr("Saturday, Sunday, Monday, Tuesday, Wednesday, ...")
            lbl2: qsTr("Labels:   ")
            lbl2Options: qsTr("important, better Do, shoud Do")
            imageBaseColor: "#257862"
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
        }
    }

}
