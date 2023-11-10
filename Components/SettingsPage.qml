import QtQuick

Item {
    id: settingsPageRoot

    Rectangle{
        anchors.fill: parent
        color: "#222"
    }

    Rectangle{
        id: headerRect
        color: "#202020"
        width: settingsPageRoot.width
        height: 50
        anchors.top: settingsPageRoot.top

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
}
