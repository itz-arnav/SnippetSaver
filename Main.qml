import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import "Components"

Window {

    id: rootWindow
    width: 800
    height: 500
    visible: true
    title: qsTr("Snippet Saver")

    Item{
        id: rootContainer
        anchors.fill: parent

        SplitView {
            id: rootContainerSplitView
            orientation: Qt.Horizontal
            anchors.fill: parent

            LeftSidePane {
                implicitWidth: parent.width/4
                SplitView.minimumWidth: parent.width/4 - 20
                id: leftSidePane
            }

            MiddlePane{
                implicitWidth: parent.width/4
                SplitView.minimumWidth: parent.width/4 - 20
                SplitView.fillWidth: true
                id: middlePane
            }

            RightSidePane{
                implicitWidth: parent.width/2
                SplitView.minimumWidth: parent.width/2
                id: rightSidePane
            }
        }
    }
}
