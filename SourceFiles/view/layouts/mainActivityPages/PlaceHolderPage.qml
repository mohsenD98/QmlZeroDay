import QtQuick 2.12

Rectangle {
    id:root
    color: "Transparent"

    Image{
        id: devLogo
        anchors.centerIn: parent
        source: "qrc:/../icons/intro_right@3x.png"

        opacity: .6
        mipmap: true
    }

    Text {
        text: qsTr("Under Develope...")
        font.pixelSize: 18
        font.family: "Open Sans"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: devLogo.bottom
        anchors.topMargin: 16
        font.bold: true
        opacity: .7
        color: "white"
    }
}
