import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Shapes 1.12

MessageBoxBorder
{
    height: msg.implicitHeight
    setupToRecive: receiving
    property bool receiving

    Image{
        id: recivedImg
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.margins: 8
        source: "qrc:/icons/history_received@3x.png"
        fillMode: Image.PreserveAspectFit
        opacity: .8
    }

    Text {
        id: date
        anchors.verticalCenter: recivedImg.verticalCenter
        anchors.right: recivedImg.left
        anchors.rightMargin: 4
        text: qsTr("00:47")
        color: "white"
        opacity: .8
        font.family: "Open Sans"
        font.pixelSize: 12
    }

    Rectangle{
        anchors.right: date.left
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.margins: 8
        color: "transparent"
        clip: true

        FontLoader
        {
             id: mainFont
             source: "qrc:/tools/font/presianDefault.ttf"
        }

        Text {
            id: msg
            height: parent.height
            width: parent.width
            wrapMode: Text.WordWrap
            text: qsTr("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
            color: "white"
            opacity: .99
            font.family: mainFont.name
            font.pixelSize: 13
            font.weight: Font.Thin
        }

    }
}
