import QtQuick
import "../../Utils/UI_Services"


Rectangle{
    id: leftSidePaneRoot
    color: "#252527"

    property var activeID : null

    PrefsSpace {
        id: topSpacer
        height: 10
    }

    Column {
        anchors.top: topSpacer.bottom
        spacing: 10
        width: parent.width

        Rectangle{
            id: allItemsCategoryTab
            width: parent.width
            height: 35

            color: "#aaa"

            Text {
                text: "All Items"
                font.pixelSize: 25
                anchors.centerIn: parent
            }
        }

        Rectangle{
            id: favouriteItemsCategoryTab
            width: parent.width
            height: 35

            color: "#777"
            Text {
                text: "Favourite"
                font.pixelSize: 25
                anchors.centerIn: parent
            }
        }
    }
}

