import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

import Style 1.0

Item{
    property real animationMaxHeight
    property real animationMinHeight
    property color micColor
    property bool startAnimations

    Rectangle{
        id: firstLayer
        width: animationMinHeight
        height: width
        anchors.centerIn: parent
        radius: width / 2
        color: micColor
        opacity: .5

        property bool animated: false

        Behavior on width {
            NumberAnimation {
                duration: 100
            }
        }
    }
    Rectangle{
        id: secondLayer
        width: animationMinHeight
        height: width
        anchors.centerIn: parent
        radius: width / 2
        color: micColor
        opacity: .4

        property bool animated: false

        Behavior on width {
            NumberAnimation {
                duration: 100
            }
        }
    }
    Rectangle{
        id: thirdLayer
        width: animationMinHeight
        height: width
        anchors.centerIn: parent
        radius: width / 2
        color: micColor
        opacity: .3

        property bool animated: false

        Behavior on width {
            NumberAnimation {
                duration: 100
            }
        }
    }

    Timer{
        id: animationtimer1
        interval: 240
        repeat: true
        running: startAnimations
        onTriggered: {
            if( firstLayer.animated ){
                firstLayer.width = animationMaxHeight * 1.2
                firstLayer.animated = false
            }else{
                firstLayer.animated = true
                firstLayer.width = animationMinHeight
            }

        }
    }
    Timer{
        id: animationtimer2
        interval: 200
        repeat: true
        running: startAnimations
        onTriggered: {
            if( secondLayer.animated ){
                secondLayer.width = animationMaxHeight * 1.2
                secondLayer.animated = false
            }else{
                secondLayer.animated = true
                secondLayer.width = animationMinHeight
            }
        }
    }
    Timer{
        id: animationtimer3
        interval: 374
        repeat: true
        running: startAnimations
        onTriggered: {
            if( thirdLayer.animated ){
                thirdLayer.width = animationMaxHeight * 1.2
                thirdLayer.animated = false
            }else{
                thirdLayer.animated = true
                thirdLayer.width = animationMinHeight
            }
        }
    }
}
