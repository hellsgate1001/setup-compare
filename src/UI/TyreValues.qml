import QtQuick

Rectangle {
    id: tyreValueRoot
    width: parent.width / 3
    x: parent.width / 3

    // public
    property real yDiff: height / 10
    property real psi: 0.10
    property real toe: 0.01
    property real camber: 0.00
    property real caster: 0.00

    Text {
        text: tyreValueRoot.psi
        x: parent.width / 10
        y: tyreRoot.yDiff * 2
    }

    Text {
        text: tyreValueRoot.toe
        x: parent.width / 10
        y: tyreRoot.yDiff * 3
    }

    Text {
        id: camberText
        text: tyreValueRoot.camber
        x: parent.width / 10
        y: tyreRoot.yDiff * 4
    }

    Text {
        text: tyreValueRoot.caster
        x: parent.width / 10
        y: tyreRoot.yDiff * 5
    }
}
