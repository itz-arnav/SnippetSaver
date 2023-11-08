import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import "Components"

Window {
    id: rootWindow
    visible: true
    title: qsTr("Snippet Saver")
    visibility: Window.Maximized
    minimumWidth: 900
    minimumHeight: 600

    Item {
        id: rootContainer
        anchors.fill: parent

        SplitView {
            id: rootContainerSplitView
            orientation: Qt.Horizontal
            anchors.fill: parent

            handle: Rectangle {
                implicitWidth: 1 // Set the width of the border here
                color: "#2E303A" // Subtle grey color
            }

            LeftSidePane {
                id: leftSidePane
                implicitWidth: rootContainerSplitView.width * 6/25
                SplitView.minimumWidth: implicitWidth - 20
            }

            MiddlePane {
                id: middlePane
                implicitWidth: rootContainerSplitView.width * 7/25
                SplitView.minimumWidth: implicitWidth - 20
                SplitView.fillWidth: true
            }

            RightSidePane {
                id: rightSidePane
                implicitWidth: rootContainerSplitView.width * 12/25
                SplitView.minimumWidth: implicitWidth - 20
            }
        }

    }
}
