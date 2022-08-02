import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtGraphicalEffects 1.0

import Style 1.0

import "../../listDelegates/board"
import "../../buttons"
import "../../editField"
Menu {
    id: root
    x: (parent.width - width) / 2
    y: (parent.height - height) / 2 - 100

    signal addContact(var contactName)

    background: Item{
        id: container
        anchors.centerIn: parent
        width:  rect.width  + (2 * rectShadow.radius)
        height: rect.height + (2 * rectShadow.radius)
        antialiasing: true

        DropShadow {
            id: rectShadow
            anchors.fill: parent
            cached: true
            horizontalOffset: 3
            verticalOffset: 3
            radius: 1
            samples: 2
            color: "#10000000"
            smooth: true
            source: rect
        }

        Rectangle{
            id: rect
            width: root.width
            height: root.height
            color: Style.theme.titleBgActive
            border.width: 1
            border.color: Style.theme.sideBarIconFgActive
            radius: 8

            Rectangle{
                id: imageSection
                anchors.top: parent.top
                anchors.topMargin:16
                anchors.horizontalCenter: parent.horizontalCenter
                width: 75
                height: 75
                radius: width / 2
                color: "grey"

                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Rectangle {
                        x: imageSection.x; y: imageSection.y
                        width: imageSection.width
                        height: imageSection.height
                        radius: imageSection.radius
                    }
                }

                Image{
                    id: profilePhoto
                    anchors.centerIn: parent
                    source: "qrc:/../icons/info/profilePic.jpg"
                    anchors.fill: parent
                    fillMode: Image.PreserveAspectFit

                    Rectangle{
                        anchors.bottom: parent.bottom
                        height: parent.height / 3
                        width: parent.width
                        color: "#99000000"

                        Image{
                            mipmap: true
                            anchors.centerIn: parent
                            source: "qrc:/../icons/upload_chat_photo@3x.png"
                        }
                    }
                }
            }

            EditableText{
                id: editableName
                anchors.top: imageSection.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 32
                height: 35
                width: parent.width * .89
                currentText: "Enter a name (only unique)"
                defaultAlignment: Text.AlignHCenter

                onInputTextChanged: {
                }
            }

            GlowingButton{
                title: "CONFIRM"
                glowColor: Style.theme.sideBarIconFgActive
                baseColor: Style.theme.titleBgActive
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 8
                baseHeight: 25
                z: 503
                onBtnClicked:{
                    if(editableName.mainControl.text !== ""){
                        addContact(editableName.mainControl.text)
                    }else if(editableName.currentText !== ""){
                        addContact(editableName.currentText)
                    }else{
                        addContact("Saved Messages")
                    }
                }
            }
        }
    }
}
