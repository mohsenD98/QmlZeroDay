import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../listDelegates/board"
import "../buttons"

Drawer{
    id: control
    width: Math.min(parent.width/1.4, 360)
    height: parent.height
    dim: true
    modal: false
    closePolicy: Popup.CloseOnPressOutside
    Overlay.modeless: Rectangle {
        color: "#33000000"

        MouseArea{
            anchors.fill: parent
            onClicked: control.close()
        }
    }

    signal addNewLabel(var lbl, var col)
    property var refrenceCol
    property string title: qsTr("Add new Card")
    property bool editing: false
    property string prevTitle: ""
    property var prevLbls
    property var lblData:
    [
        {
            mColor: "#1F7E38",
            mText: qsTr("Feature"),
            lblIsSelected: false
        },
        {
            mColor: "#BC2E2A",
            mText: qsTr("Bug"),
            lblIsSelected: false
        },
        {
            mColor: "#B6AA37",
            mText: qsTr("Important"),
            lblIsSelected: false
        }

    ]

    function updateDesc(){
        if(prevTitle !== ""){
            input.text = prevTitle
            input.focus = true
        }
    }

    function updateLabels(){
        for(var k=0; k<lblData.length; ++k){
            lblData[k].lblIsSelected = false
        }

        for(var i=0; i<lblData.length; ++i){
            for(var j=0; j<prevLbls.split(",").length; j+= 2){
                if(lblData[i].mText === prevLbls.split(",")[j])
                {
                    lblData[i].lblIsSelected = true
                }
            }
        }
        lblData = lblData
    }

    function showError(msg){
        errorBox.height = 40
        errorMsg.text = msg
        errorTimer.running = true

    }

    background: Rectangle{
        color: headerBox.color

        Rectangle{
            id: head
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.left: parent.left
            height: 45
            color: "transparent"

            Text {
                text: title
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 8
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 14
                font.family: "Open Sans"
                font.bold: true
            }

            RoundButton{
                id: cancel
                icon.source: "qrc:/../icons/history_file_cancel@3x.png"
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                flat: true
                opacity: .5
                onClicked: control.close()
            }
            RoundButton{
                id: options
                anchors.right: cancel.left
                anchors.rightMargin: -8
                anchors.verticalCenter: parent.verticalCenter
                width: 35
                height: width
                icon.source: "qrc:/../icons/mediaview_more@3x.png"
                opacity: .5
                flat: true
            }

        }

        Rectangle{
            id: menuBody
            anchors.top: head.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            color: Style.theme.windowBg

            Rectangle{
                id: inputRect
                border.color: input.activeFocus? Style.theme.sideBarIconFgActive : Style.theme.sideBarTextFg
                border.width: 2
                radius: 2
                color: "transparent"
                width: parent.width*.95
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: 8
                height: 100
                clip: true


                TextEdit{
                    id: input
                    anchors.fill: parent
                    anchors.margins: 8
                    font.family: "Open Sans"
                    color: Style.theme.dialogsTextFgActive
                    wrapMode: TextEdit.Wrap
                    text: prevTitle
                }

                Text {
                    text: qsTr("Enter board description here")
                    anchors.fill: parent
                    anchors.margins: 8
                    color: Style.theme.sideBarTextFg
                    visible: !input.activeFocus && input.text === ""
                    font.family: "Open Sans"
                }

            }

            RoundButton{
                id: descIcon
                icon.source: "qrc:/../icons/top_bar_group_call@3x.png"
                anchors.left: parent.left
                anchors.top: inputRect.bottom
                flat: true
                opacity: .5
            }
            Text {
                text: qsTr("Description")
                anchors.verticalCenter: descIcon.verticalCenter
                anchors.left: descIcon.right
                anchors.leftMargin: -8
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 10
                font.family: "Open Sans"
                font.bold: true
                opacity: .5
            }

            Rectangle{
                id: sp1
                color: Style.theme.dialogsTextFgActive
                opacity: .5
                width: parent.width * .95
                height: 1
                anchors.top: descIcon.bottom
                anchors.horizontalCenter: parent.horizontalCenter
            }

            RoundButton{
                id: lblIcon
                icon.source: "qrc:/../icons/top_bar_group_call@3x.png"
                anchors.left: parent.left
                anchors.top: sp1.bottom
                flat: true
                opacity: .5
            }
            Text {
                text: qsTr("Labels")
                anchors.verticalCenter: lblIcon.verticalCenter
                anchors.left: lblIcon.right
                anchors.leftMargin: -8
                color: Style.theme.dialogsTextFgActive
                font.pixelSize: 10
                font.family: "Open Sans"
                font.bold: true
                opacity: .5
            }

            Rectangle{
                id: lblCombo
                anchors.top: lblIcon.bottom
                width: parent.width * .95
                height: 35
                color: headerBox.color
                radius: 4
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    text: qsTr("Add/Remove Labels")
                    anchors.fill: parent
                    anchors.margins: 8
                    color: Style.theme.sideBarTextFg
                    font.family: "Open Sans"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        lblMenu.open()
                    }
                }
            }

            Flow{
                id: labelsFlow
                anchors.top: lblCombo.bottom
                anchors.topMargin: 16
                anchors.leftMargin: 8
                anchors.rightMargin: 8
                anchors.left: parent.left
                anchors.right: parent.right
                height: 45
                spacing: 8

                Repeater{
                    model: lblData
                    delegate: CardLabel{
                        labelColor: lblData[index].mColor
                        title: lblData[index].mText
                        visible:  lblData[index].lblIsSelected
                    }
                }
            }

            Menu {
                id: lblMenu
                x: lblCombo.x
                y: lblCombo.y+lblCombo.height

                background: Rectangle{
                    width: lblCombo.width
                    height: lblData.length * 35 + 35
                    color: headerBox.color
                    Column{
                        anchors.fill: parent

                        Repeater{
                            model: lblData
                            delegate: LabelSelectionRow{
                                mColor: lblData[index].mColor
                                mText: lblData[index].mText
                                lblIsSelected: lblData[index].lblIsSelected

                                onLblSelected:{
                                    lblData[index].lblIsSelected = !lblData[index].lblIsSelected
                                    lblData = lblData
                                }
                            }
                        }
                        NewLabelSelectionRow{
                            mColor: "transparent"
                            mText: "Click To Enter New Label"
                            lblIsSelected: false

                            onInsertNewLabel: {
                                addNewLabel(lblName, lblColor)
                                reset()
                            }

                            onEmitError: {
                                showError(msg)
                            }
                        }
                    }
                }
            }

            Rectangle{
                id: errorBox
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                color: "transparent"
                anchors.margins: 4
                height: 0
                border.color: "red"
                border.width: 1
                radius: 2

                Behavior on height{
                    NumberAnimation{
                        duration: 100
                    }
                }

                Text {
                    id: errorMsg
                    text: ""
                    font.pixelSize: 12
                    color: "white"
                    anchors.centerIn: parent
                }
            }

            Timer{
                id: errorTimer
                interval: 4000
                running: false
                repeat: false
                onTriggered: {
                    errorBox.height = 0
                    errorMsg.text = ""
                }
            }

            GlowingButton{
                title: editing? "Edit this Card": "Add this Card"
                y: input.focus? labelsFlow.y+labelsFlow.height + 10: parent.y+parent.height - 100
                glowColor: Style.theme.sideBarIconFgActive
                baseColor: headerBox.color
                anchors.bottom: errorBox.top
                anchors.bottomMargin: input.focus? 8: 50
                anchors.horizontalCenter: parent.horizontalCenter

                Behavior on y{
                    NumberAnimation{
                        duration: 400
                    }
                }

                onBtnClicked:{
                    var mLabelsModel=""
                    for(var i=0 ; i< lblData.length ; ++i){
                        if(lblData[i].lblIsSelected){
                            mLabelsModel += lblData[i].mText
                            mLabelsModel += ","
                            mLabelsModel += lblData[i].mColor

                            if(i !== lblData.length-1)
                                 mLabelsModel += ","

                        }
                    }

                    var data = {
                        "mLabelsModel": mLabelsModel,
                        "mTitle": input.text,
                        "selected": false
                    }

                    if(editing){
                        refrenceCol.editCard(data)
                        control.close()
                        editing = false
                        return
                    }

                    refrenceCol.addCard(data)
                    control.close()
                }
            }
        }

    }
}
