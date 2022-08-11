import QtQuick 2.12
import QtQuick.Controls 2.12

import Style 1.0

Rectangle{
    color: "black"
    property color messageColor: "white"
    property color iconColor: "white"
    property string message: "Under developement"
    property string iconPath: "qrc:/icons/mGram/logo_1.png"
    property bool disableIcon: iconPath === ""
    property real defaultOpenHeight: 50
    property real delayTime: 1500
    clip: true

    height: 0
    width: parent.width

    function isOpen(){
        return height === defaultOpenHeight
    }

    function isClosed(){
        return height === 0
    }

    function open(){
        animateOpenTimer.running = true
    }

    function close(){
        animateCloseTimer.running = true
    }

    Behavior on height{
        NumberAnimation{
            duration: 100
        }
    }

    Timer{
        id: animateOpenTimer
        interval: 0
        repeat: false
        running: false
        onTriggered: {
            height = defaultOpenHeight
            running = false
            animateCloseTimer.running = true
        }
    }
    Timer{
        id: animateCloseTimer
        interval: delayTime
        repeat: false
        running: false
        onTriggered: {
            height = 0
            animateCloseTimer.running = false
        }
    }
    Text {
        text: message
        font.family: "Open Sans"
        font.pixelSize: 14
        height: defaultOpenHeight
        anchors.right: linker.left
        anchors.left: icon.right
        anchors.verticalCenter: parent.verticalCenter
        horizontalAlignment: disableIcon? Text.AlignHCenter: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        color: messageColor
    }
    RoundButton{
        id: icon
        height: parent.height
        width: height
        icon.source: iconPath
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        flat: true
        icon.color:iconColor
    }
    RoundButton{
        id: linker
        height: parent.height
        width: height
        icon.source: ""
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        flat: true
    }
}
