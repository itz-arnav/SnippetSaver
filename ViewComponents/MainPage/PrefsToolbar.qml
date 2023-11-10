import QtQuick
import QtQuick.Controls

ToolBar {
    id: rootToolbar
    background: Rectangle {
        anchors.fill: parent
        color: "#252527"

        Rectangle {
            height: 1
            color: "#555"
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Rectangle {
            height: 1
            color: "#555"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
        }
    }

    Item {
        width: parent.width - (leftSidePane.width + rightSidePane.width) + 5
        height: 35
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: leftSidePane.width
        anchors.right: parent.right
        anchors.rightMargin: rightSidePane.width
        Rectangle{
            anchors.fill: parent
            color: "#535558"
        }

        Rectangle {
            id: searchIconRect
            anchors.left: parent.left
            width: 35
            height: 35
            anchors.verticalCenter: parent.verticalCenter
            color: "#595963"

            Image {
                id: searchIcon
                source: "qrc:/Resources/FontAwesomeIcons/search_white.svg"
                width: 15
                height: 15
                anchors.centerIn: parent
            }
        }

        TextField {
            id: searchInput
            placeholderText: qsTr("Search...")
            placeholderTextColor: "#aaa"
            font.pixelSize: 16
            color: "#bbb"
            height: parent.height
            width: parent.width - searchIconRect.width - clearIconRect.width
            leftPadding: 5
            rightPadding: 5
            verticalAlignment: TextEdit.AlignVCenter
            anchors.right: clearIconRect.left
            background: Rectangle{
                anchors.fill: parent
                color: "#595963"
            }
        }

        Rectangle {
            id: clearIconRect
            anchors.right: parent.right
            width: 35
            height: 35
            anchors.verticalCenter: parent.verticalCenter
            color: "#595963"

            Image {
                id: clearIcon
                source: "qrc:/Resources/FontAwesomeIcons/clear_white.svg"
                width: 16
                height: 16
                anchors.centerIn: parent
                visible: searchInput.text !== ""

                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        searchInput.text = ""
                    }
                    hoverEnabled: true
                    cursorShape: containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor
                }
            }
        }
    }

    Rectangle {
        id: settingsButton
        anchors.right: parent.right
        anchors.rightMargin: 2
        height: parent.height
        width: 50
        anchors.verticalCenter: parent.verticalCenter
        color: "transparent"

        Image {
            id: settingsIcon
            source: "qrc:/Resources/FontAwesomeIcons/settings_white.svg"
            width: 30
            height: 30
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor
            onEntered: settingsButton.color = "#595963"
            onExited: settingsButton.color = "transparent"

            onClicked: {
                gGlobalActions.settingsMenuOpenAction.trigger()
            }

            onReleased: {
                settingsButton.color = containsMouse ? "#595963" : "transparent"
            }
        }

    }
}
