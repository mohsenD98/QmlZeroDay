import QtQuick 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

import Style 1.0

Item{
    property real animationMaxHeight
    property real animationMinHeight
    property color micColor
    property bool startAnimations

    property real animSpeed1: 240 * 2
    property real animSpeed2: 200 * 2
    property real animSpeed3: 374 * 2

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
                duration: animSpeed1
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
                duration: animSpeed2
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
                duration: animSpeed3
            }
        }
    }

    Timer{
        id: animationtimer1
        interval: animSpeed1
        repeat: true
        running: startAnimations
        onTriggered: {
            if( firstLayer.animated ){
                firstLayer.width = animationMaxHeight * 1.2
                firstLayer.radius = (firstLayer.width) - 12
                firstLayer.animated = false
            }else{
                firstLayer.animated = true
                firstLayer.width = animationMinHeight
                firstLayer.radius = (firstLayer.width)
            }

        }
    }
    Timer{
        id: animationtimer2
        interval: animSpeed2
        repeat: true
        running: startAnimations
        onTriggered: {
            if( secondLayer.animated ){
                secondLayer.width = animationMaxHeight * 1.2
                firstLayer.radius = (secondLayer.width) - 8
                secondLayer.animated = false
            }else{
                secondLayer.animated = true
                secondLayer.width = animationMinHeight
                secondLayer.radius = (secondLayer.width)
            }
        }
    }
    Timer{
        id: animationtimer3
        interval: animSpeed3
        repeat: true
        running: startAnimations
        onTriggered: {
            if( thirdLayer.animated ){
                thirdLayer.width = animationMaxHeight * 1.2
                thirdLayer.radius = (thirdLayer.width) - 20
                thirdLayer.animated = false
            }else{
                thirdLayer.animated = true
                thirdLayer.width = animationMinHeight
                thirdLayer.radius = (thirdLayer.width)
            }
        }
    }
}
