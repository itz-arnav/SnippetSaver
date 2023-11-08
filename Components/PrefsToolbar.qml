import QtQuick
import QtQuick.Controls

ToolBar {
    height: 50
    background: Rectangle {
        anchors.fill: parent
        color: "#202123"
    }

    Item {
        width: parent.width - (leftSidePane.width + rightSidePane.width) + 5
        height: 35
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: leftSidePane.width
        anchors.right: parent.right
        anchors.rightMargin: rightSidePane.width

        TextField {
            id: searchInput
            placeholderText: qsTr("Search...")
            placeholderTextColor: "#aaa"
            font.pixelSize: 16
            color: "#bbb"
            anchors.fill: parent
            leftPadding: 25
            rightPadding: 25
            verticalAlignment: TextEdit.AlignVCenter
            background: Rectangle{
                anchors.fill: parent
                color: "#353641"
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
            onEntered: settingsButton.color = "#353641"
            onExited: settingsButton.color = "transparent"

            onClicked: {
                console.log("Settings button clicked")
            }

            onReleased: {
                settingsButton.color = containsMouse ? "#353641" : "transparent"
            }
        }

    }
}
