import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0
import QtQuick.Particles 2.0

import Style 1.0

Rectangle {

    property string counter: "1"

    signal deleteRequested
    signal cancelRequested


    ParticleSystem {
        anchors.verticalCenter: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
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
            lifeSpan: 1000
            size: 10
            sizeVariation: 0
            velocity: AngleDirection {angleVariation: 180; magnitude: 60}
            enabled: parent.visible
        }
    }

    Rectangle{
        id: imageSection
        anchors.verticalCenter: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height
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
            source: "qrc:/../icons/info/profilePic.jpg"
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }

    RoundButton{
        id: close
        icon.source: "qrc:/../icons/history_file_cancel@3x.png"
        flat: true
        scale: 1
        anchors.verticalCenter: parent.verticalCenter

        onClicked: cancelRequested()
    }

    Text {
        text: counter
        font.pixelSize: 18
        color: "white"
        opacity: .95
        font.family: "Open Sans"
        anchors.verticalCenter: close.verticalCenter
        anchors.left: close.right
        font.bold: true
    }

    Row{
        anchors.right: parent.right
        height: parent.height
        anchors.verticalCenter: parent.verticalCenter

        RoundButton{
            id: deleteBtn
            icon.source: "qrc:/../icons/info/info_media_delete@3x.png"
            flat: true
            anchors.verticalCenter: parent.verticalCenter
            onClicked: deleteRequested()
        }

        RoundButton{
            id: mroeBtn
            icon.source: "qrc:/../icons/player/player_more@3x.png"
            flat: true
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
