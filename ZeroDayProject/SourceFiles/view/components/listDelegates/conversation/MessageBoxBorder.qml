import QtQuick 2.12
import QtQuick.Shapes 1.12

Item {
    property color msgColor
    property bool setupToRecive: true

    Rectangle{
        width: parent.width
        height: parent.height
        color: msgColor
        radius: 8

        Shape {
            width: 20
            z:-1
            height: 10
            anchors.left: setupToRecive? parent.left: undefined
            anchors.leftMargin: setupToRecive? -8: 0
            anchors.right: setupToRecive? undefined: parent.right
            anchors.rightMargin: setupToRecive? 0: -8
            anchors.bottom: parent.bottom

            ShapePath {
                fillColor: msgColor
                strokeColor: msgColor
                strokeWidth: 0
                startX: 5; startY: 10
                capStyle: ShapePath.RoundCap

                PathLine { x: 10; y: 0 }
                PathLine { x: 15; y: 10 }
                PathLine { x: 5; y: 10 }
            }
        }
    }
}
