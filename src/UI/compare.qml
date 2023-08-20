import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Layouts

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Setup Comparison"

    Rectangle {
        anchors.fill: parent

        TabBar {
            id: bar
            width: parent.width

            TabButton {
                text: "Tyres"
            }

            TabButton {
                text: "Electronics"
            }

            TabButton {
                text: "Fuel & Strategy"
            }

            TabButton {
                text: "Mechanical Grip"
            }

            TabButton {
                text: "Dampers"
            }

            TabButton {
                text: "Aero"
            }
        }

        StackLayout {
            width: parent.width
            height: parent.height - bar.height
            y: bar.height
            currentIndex: bar.currentIndex

            Item {
                id: tyreTab
                width: parent.width
                height: parent.height

                Rectangle {
                    width: parent.width
                    height: parent.height

                    Tyre {
                        text: "Left Front"
                    }

                    Tyre {
                        text: "Right Front"
                        x: parent.width / 2
                    }

                    Tyre {
                        text: "Left Rear"
                        y: parent.height / 2
                    }

                    Tyre {
                        text: "Right Rear"
                        x: parent.width / 2
                        y: parent.height / 2
                    }

                    // Rectangle {
                    //     width: parent.width / 2
                    //     height: parent.height / 2

                    //     Text {
                    //         text: "Left Front"
                    //         x: parent.width / 10
                    //         y: parent.height / 10
                    //     }
                    // }

                    // Rectangle {
                    //     width: parent.width / 2
                    //     height: parent.height / 2
                    //     x: parent.width / 2

                    //     Text {
                    //         text: "Right Front"
                    //         x: parent.width / 10
                    //         y: parent.height / 10
                    //     }
                    // }

                    // Rectangle {
                    //     width: parent.width / 2
                    //     height: parent.height / 2
                    //     y: parent.height / 2

                    //     Text {
                    //         text: "Left Rear"
                    //         x: parent.width / 10
                    //         y: parent.height / 10
                    //     }
                    // }

                    // Rectangle {
                    //     width: parent.width / 2
                    //     height: parent.height / 2
                    //     x: parent.width / 2
                    //     y: parent.height / 2

                    //     Text {
                    //         text: "Right Rear"
                    //         x: parent.width / 10
                    //         y: parent.height / 10
                    //     }
                    // }
                }
            }

            Item {
                id: electronicsTab
                width: parent.width
                height: parent.height

                Text {
                    text: "Electronics Tab"
                }
            }

            Item {
                id: fuelTab
                width: parent.width
                height: parent.height
            }

            Item {
                id: gripTab
                width: parent.width
                height: parent.height
            }

            Item {
                id: dampersTab
                width: parent.width
                height: parent.height
            }

            Item {
                id: aeroTab
                width: parent.width
                height: parent.height
            }
        }
    }
}
