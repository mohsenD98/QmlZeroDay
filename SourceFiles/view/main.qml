import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtGraphicalEffects 1.0

import Style 1.0

ApplicationWindow {
    id: mainWindow
    visible: true
    width: 480
    height: 720
    title: qsTr("Qml Telegram")
    color: "black"
    flags: Qt.Window | Qt.WindowTitleHint | Qt.WindowSystemMenuHint
           | (Qt.platform.os === "ios" ? Qt.MaximizeUsingFullscreenGeometryHint : 0)

    StackView {
        id: stackview
        anchors.fill: parent
        initialItem: "qrc:/layouts/AppMainActivity.qml"
        Keys.onBackPressed: pop()
        focus: true

        pushEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to: 1
                duration: 100
            }
        }
        pushExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 0
            }
        }
        popEnter: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 0
                to: 1
                duration: 200
            }
        }
        popExit: Transition {
            PropertyAnimation {
                property: "opacity"
                from: 1
                to: 0
                duration: 0
            }
        }
    }
}
