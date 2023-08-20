import QtQuick

Rectangle {
    width: parent.width / 2

    // public
    property real yDiff: height / 10

    Text {
        text: "PSI"
        x: parent.width / 10
        y: tyreRoot.yDiff * 2
    }

    Text {
        text: "Toe"
        x: parent.width / 10
        y: tyreRoot.yDiff * 3
    }

    Text {
        id: camberText
        text: "Camber"
        x: parent.width / 10
        y: tyreRoot.yDiff * 4
    }

    Text {
        text: "Caster"
        x: parent.width / 10
        y: tyreRoot.yDiff * 5
    }
}
