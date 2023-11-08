import QtQuick
import QtQuick.Controls

ToolBar {
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
                   color: "#000"
                   anchors.fill: parent
                   padding: 5
                   leftPadding: 25
                   rightPadding: 25
                    verticalAlignment: TextEdit.AlignVCenter
               }
           }

           Button {
               id: settingsButton

               text: "Settings"
               anchors.right: parent.right
               anchors.rightMargin: 20
               height: parent.height * 0.8
               padding: 50
               anchors.verticalCenter: parent.verticalCenter

               onClicked: {
                   drawer.open()
               }
           }
       }
