import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 800
    height: 400
    color: "#1c1c1c" // Dark slate branding theme

    Timer {
        id: specializedTimer
        interval: 7500 // Flips text cards every 7.5 seconds
        running: true
        repeat: true
        onTriggered: {
            wmStack.currentIndex = (wmStack.currentIndex + 1) % wmStack.count
        }
    }

    StackLayout {
        id: wmStack
        anchors.fill: parent
        anchors.margins: 40

        // Slide 1: High Density Floating Layouts
        Item {
            Column {
                spacing: 20
                anchors.centerIn: parent
                Text {
                    text: "34 Classic Stacking Window Managers"
                    color: "#4a90e2"
                    font.pointSize: 22
                    font.bold: true
                }
                Text {
                    text: "Explore our comprehensive Stacking Spin, pre-baked with 34 isolated interfaces.\nFrom feature-complete Openbox and Fluxbox to minimalist 2bwm and heritage Motif (MWM)."
                    color: "#ffffff"
                    font.pointSize: 14
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        // Slide 2: Keyboard Driven Power Layouts
        Item {
            Column {
                spacing: 20
                anchors.centerIn: parent
                Text {
                    text: "21 Dynamic & Manual Tiling Engines"
                    color: "#4a90e2"
                    font.pointSize: 22
                    font.bold: true
                }
                Text {
                    text: "Maximize efficiency with keyboard-driven tree configurations on our Tiling Spin.\nIncludes standard i3-wm, awesome, bspwm, and programmatic environments like Qtile and xmonad."
                    color: "#ffffff"
                    font.pointSize: 14
                    horizontalAlignment: Text.AlignHCenter
                }
            }
        }

        // Slide 3: Native 32-Bit Multiarch Capabilities
        Item {
            Column {
                spacing: 20
                anchors.centerIn: parent
                Text {
                    text: "Pre-Configured i686 Application Infrastructure"
                    color: "#4a90e2"
                    font.pointSize: 22
                    font.bold: true
                }
                Text {
                    text: "No extra configuration commands required. Native 32-bit dpkg architectures\nare enabled by default, ensuring your legacy tools and classic binaries deploy flawlessly."
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
        count: wmStack.count
        currentIndex: wmStack.currentIndex
    }
}
