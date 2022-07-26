import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

import "../components/toolbar"
import "../components/editField"
import "../components/listDelegates"
import "../components/drawer"

Rectangle {
    id:root
    anchors.fill: parent
    color: Style.theme.windowBg

    BoardHeaderLayout{
        id: header
        width: parent.width
        height: 45
        color: Style.theme.titleBgActive

        onApplogoClicked: pageFrame.close()
    }

    BoardSearchBar{
        id: searchBar
        anchors.top: header.bottom
        anchors.topMargin: 8
        width: parent.width * .95
        height: 35
        anchors.horizontalCenter: parent.horizontalCenter
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

            Row{
                id: cardColumns
                width: 3*250 + 10
                height: root.height
                spacing: 8

                Repeater{
                    model: ["To Do", "In Progress", "Done"]
                    delegate: BoardCardColumn{
                        title: modelData
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
    }




}
