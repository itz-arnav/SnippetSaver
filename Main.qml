import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import "Components"

ApplicationWindow {
    id: rootWindow
    visible: true
    title: qsTr("Snippet Saver")
    visibility: Window.Maximized
    minimumWidth: 900
    minimumHeight: 600

    header: ToolBar {
           height: 40
           background: Rectangle {
               anchors.fill: parent
               color: "#202123"
           }

           // Use a container item for the search field and its background
           Item {
               width: parent.width - (leftSidePane.width + rightSidePane.width)
               height: 30
               anchors.verticalCenter: parent.verticalCenter
               anchors.left: parent.left
               anchors.leftMargin: leftSidePane.width
               anchors.right: parent.right
               anchors.rightMargin: rightSidePane.width

               Rectangle {
                   anchors.fill: parent
                   border.color: "grey"
                   border.width: 1
                   radius: 2
               }

               TextField {
                   id: searchInput
                   placeholderText: qsTr("Search...")
                   font.pixelSize: 16
                   color: "#000000"
                   anchors.fill: parent
                   padding: 5
                   leftPadding: 25
                   rightPadding: 25
                    verticalAlignment: TextEdit.AlignVCenter
               }
           }
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
}
