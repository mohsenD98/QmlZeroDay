import QtQuick 2.12
import QtGraphicalEffects 1.0
import QtQuick.Shapes 1.12

MessageBoxBorder
{
    height: msg.implicitHeight + 16 // 16 is margins
    width: Math.min(parent.width * .75, (msg.text.length * 4) + date.width + 110) // 110 is image and margins

    setupToRecive: receiving
    property bool receiving
    property string msgText
    property string msgDate

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
        text: msgDate
        color: "white"
        opacity: .8
        font.family: "Open Sans"
        font.pixelSize: 12
    }

    Rectangle{
        anchors.right: date.left
        anchors.top: parent.top
        anchors.left: parent.left
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
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            text: msgText
            color: "white"
            opacity: .99
            font.family: mainFont.name
            font.pixelSize: 13
            font.weight: Font.Thin
        }
    }
}
