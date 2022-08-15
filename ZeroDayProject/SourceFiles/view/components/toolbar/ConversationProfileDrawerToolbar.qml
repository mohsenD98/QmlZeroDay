import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import Qt5Compat.GraphicalEffects
import QtQuick.Particles 2.0

import Style 1.0

Item{
    id: container
    width:  parent.width
    height: 64 * 2
    antialiasing: true

    property color backgroundColor
    property color textColor
    property string conversationWithUserName
    property bool runStarAnimation

    signal closeRequset

    DropShadow {
        id: rectShadow
        anchors.fill: parent
        cached: true
        horizontalOffset: 3
        verticalOffset: 3
        radius: 1
//        //            samples: 2
        color: "#10000000"
        smooth: true
        source: bg
    }
    Rectangle{
        id: bg
        color: backgroundColor
        width: parent.width
        height: parent.height


        RoundButton{
            id: backBtn
            anchors.verticalCenter: parent.verticalCenter
            icon.source: "qrc:/icons/info/info_back@3x.png"
            anchors.left: parent.left
            flat: true
            scale: 1.5

            onClicked: closeRequset()
        }

        ParticleSystem {
            anchors.verticalCenter: imageSection.verticalCenter
            anchors.horizontalCenter: imageSection.horizontalCenter
            height: parent.height
            width: height

            ImageParticle {
                anchors.fill: parent
                source: "qrc:///particleresources/star.png"
                alpha: 0
                alphaVariation: 0.2
                colorVariation: 1.0
            }

            Emitter {
                id: starRain
                anchors.centerIn: parent
                emitRate: 10
                lifeSpan: 1500
                size: 20
                sizeVariation: 0
                velocity: AngleDirection {angleVariation: 180; magnitude: 60}
                enabled: runStarAnimation
            }
        }

        Rectangle{
            id: imageSection
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: parent.height - 30
            width: height
            radius: width / 2

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
                source: "qrc:/icons/info/profilePic.jpg"
                anchors.fill: parent
                fillMode: Image.PreserveAspectFit
            }
        }

        RoundButton{
            id: options
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 4
            height: 40
            width: height
            icon.source: "qrc:/icons/mediaview_more@3x.png"
            opacity: .8
            flat: true
            scale: 1.2
        }

        RoundButton{
            id: call
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: options.left
            anchors.rightMargin: -0
            icon.source: "qrc:/icons/calls/call_answer@3x.png"
            opacity: .8
            flat: true
            scale: 1.5
        }
    }
}
