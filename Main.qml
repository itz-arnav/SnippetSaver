import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import "Components"

ApplicationWindow {
    id: rootWindow
    visible: true
    title: qsTr("Snippet Saver")
//    visibility: Window.Maximized
    minimumWidth: 900
    minimumHeight: 600

    header: PrefsToolbar{
        id: prefsToolbar
    }

    Item {
        id: rootContainer
        anchors.fill: parent

        SplitView {
            id: rootContainerSplitView
            orientation: Qt.Horizontal
            anchors.fill: parent

            handle: Rectangle {
                implicitWidth: 1
                color: "#2E303A"
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

    Drawer {
        id: settingsDrawer
        width: 0.3 * rootWindow.width
        height: rootWindow.height
        edge: Qt.RightEdge
        Label {
            text: "Content goes here!"
            anchors.centerIn: parent
        }
    }
}
