import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

import Style 1.0

import "../listDelegates"
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
    }


    property var refrenceCol
    property var lblData:
    [
        {
            mColor: "#1F7E38",
            mText: qsTr("Feature"),
            lblIsSelected: true
        },
        {
            mColor: "#BC2E2A",
            mText: qsTr("Bug"),
            lblIsSelected: true
        },
        {
            mColor: "#B6AA37",
            mText: qsTr("Important"),
            lblIsSelected: true
        }

    ]

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
                text: qsTr("Add new Card")
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
                }

                Text {
                    text: qsTr("Enter board description here")
                    anchors.fill: parent
                    anchors.margins: 8
                    color: Style.theme.sideBarTextFg
                    visible: !input.activeFocus
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

                CardLabel{
                    labelColor: lblData[0].mColor
                    title: lblData[0].mText
                    visible:  lblData[0].lblIsSelected
                }
                CardLabel{
                    labelColor: lblData[1].mColor
                    title: lblData[1].mText
                    visible:  lblData[1].lblIsSelected
                }
                CardLabel{
                    labelColor: lblData[2].mColor
                    title: lblData[2].mText
                    visible:  lblData[2].lblIsSelected
                }
            }

            Menu {
                id: lblMenu
                x: lblCombo.x
                y: lblCombo.y+lblCombo.height

                background: Rectangle{
                    width: lblCombo.width
                    height: 100
                    color: headerBox.color
                    Column{
                        anchors.fill: parent

                        LabelSelectionRow{
                            mColor: lblData[0].mColor
                            mText: lblData[0].mText
                            lblIsSelected: lblData[0].lblIsSelected

                            onLblSelected:{
                                lblData[0].lblIsSelected = !lblData[0].lblIsSelected
                                lblData = lblData
                            }
                        }

                        LabelSelectionRow{
                            mColor: lblData[1].mColor
                            mText: lblData[1].mText
                            lblIsSelected: lblData[1].lblIsSelected

                            onLblSelected:{
                                lblData[1].lblIsSelected = !lblData[1].lblIsSelected
                                lblData = lblData
                            }
                        }

                        LabelSelectionRow{
                            mColor: lblData[2].mColor
                            mText: lblData[2].mText
                            lblIsSelected: lblData[2].lblIsSelected

                            onLblSelected:{
                                lblData[2].lblIsSelected = !lblData[2].lblIsSelected
                                lblData = lblData
                            }
                        }
                    }
                }
            }

            GlowingButton{
                title: "Add this Card"
                y: input.focus? labelsFlow.y+labelsFlow.height + 10: parent.y+parent.height - 100
                glowColor: Style.theme.sideBarIconFgActive
                baseColor: headerBox.color
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

                            if(i!=lblData.length-1)
                                 mLabelsModel += ","

                        }
                    }

                    var data = {
                        "mLabelsModel": mLabelsModel,
                        "mTitle": input.text,
                        "selected": false
                    }

                    refrenceCol.addCard(data)
                    control.close()
                }
            }
        }

    }
}
