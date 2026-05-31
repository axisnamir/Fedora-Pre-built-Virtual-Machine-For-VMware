import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 800
    height: 400
    color: "#1c1c1c" // Matches your dark sidebar theme background

    Timer {
        id: slideTimer
        interval: 8000 // Flips to a new text block every 8 seconds
        running: true
        repeat: true
        onTriggered: {
            slideStack.currentIndex = (slideStack.currentIndex + 1) % slideStack.count
        }
    }

    StackLayout {
        id: slideStack
        anchors.fill: parent
        anchors.margins: 40

        // Slide 1: Welcome Greeting
        Item {
            Column {
                spacing: 20
                anchors.centerIn: parent
                Text {
                    text: "Welcome to gNewSense Evolution 5.0"
                    color: "#4a90e2" // Your light-blue highlight accent
                    font.pointSize: 22
                    font.bold: true
                }
                Text {
                    text: "Rebuilt by the gNewSense Core Team using rock-solid Debian Forky architecture.\nEnjoy absolute software control without sudden breaking updates."
                    color: "#ffffff"
                    font.pointSize: 14
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        // Slide 2: Desktop Sandboxing Proof
        Item {
            Column {
                spacing: 20
                anchors.centerIn: parent
                Text {
                    text: "Massive Multi-Desktop Testing Grounds"
                    color: "#4a90e2"
                    font.pointSize: 22
                    font.bold: true
                }
                Text {
                    text: "Whether running our 21-Manager Tiling Spin or 34-Desktop Stacking Spin,\nuser environment configurations remain safely isolated inside /etc/skel/.config/."
                    color: "#ffffff"
                    font.pointSize: 14
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        // Slide 3: Performance Kernel Tweaks
        Item {
            Column {
                spacing: 20
                anchors.centerIn: parent
                Text {
                    text: "Powered Natively by the Linux Zen Kernel"
                    color: "#4a90e2"
                    font.pointSize: 22
                    font.bold: true
                }
                Text {
                    text: "Engineered with low-latency job scheduling, optimized RAM caching presets,\nand advanced processing loops to keep your system hardware highly responsive."
                    color: "#ffffff"
                    font.pointSize: 14
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }
    }

    PageIndicator {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: 20
        count: slideStack.count
        currentIndex: slideStack.currentIndex
    }
}
