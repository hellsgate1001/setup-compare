import QtQuick
import QtQuick.Controls.Basic

ApplicationWindow {
    visible: true
    width: 400
    height: 600
    title: "HelloApp"
    flags: Qt.FramelessWindowHint | Qt.Window
    property string currTime: "00:00:00"
    property QtObject backend

    Rectangle {
        anchors.fill: parent
        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./images/playas.jpg"
            fillMode: Image.PreserveAspectCrop
        }
        Rectangle {
            anchors.fill: parent
            color: "white"
            Text {
                anchors {
                    bottom: parent.bottom
                    bottomMargin: 12
                    left: parent.left
                    leftMargin: 12
                }

                text: currTime
                font.pixelSize: 24
                color: "black"
            }
        }
    }
    Connections {
        target: backend
        function onUpdated(msg) {
            currTime = msg
        }
    }
}
