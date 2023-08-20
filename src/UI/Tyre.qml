import QtQuick

Rectangle {
    id: tyreRoot
    width: parent.width / 2
    height: parent.height / 2

    // public
    property string text: "Which tyre?"
    property real yDiff: height / 10

    Text {
        text: tyreRoot.text
        x: parent.width / 10
        y: tyreRoot.yDiff
    }

    Text {
        text: "PSI"
        x: parent.width / 10
        y: tyreRoot.yDiff * 2
    }

    Text {
        text: "--.-"
        x: parent.width / 10 + camberText.contentWidth + 10
        y: tyreRoot.yDiff * 2
    }

    Text {
        text: "Toe"
        x: parent.width / 10
        y: tyreRoot.yDiff * 3
    }

    Text {
        text: "--.-"
        x: parent.width / 10 + camberText.contentWidth + 10
        y: tyreRoot.yDiff * 3
    }

    Text {
        id: camberText
        text: "Camber"
        x: parent.width / 10
        y: tyreRoot.yDiff * 4
    }

    Text {
        text: "--.-"
        x: parent.width / 10 + camberText.contentWidth + 10
        y: tyreRoot.yDiff * 4
    }

    Text {
        text: "Caster"
        x: parent.width / 10
        y: tyreRoot.yDiff * 5
    }

    Text {
        text: "--.-"
        x: parent.width / 10 + camberText.contentWidth + 10
        y: tyreRoot.yDiff * 5
    }
}
