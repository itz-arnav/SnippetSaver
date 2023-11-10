import QtQuick
import QtQuick.Controls

QtObject{
    property var settingsMenuOpenAction: Action{
        shortcut: "Ctrl+,"
        onTriggered: {
            rootContainerSplitView.opacity = 0.75
            prefsToolbar.opacity = 0.75
            settingsDrawer.open()
        }
    }
}
