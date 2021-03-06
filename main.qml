import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: root
    width: 1024
    height: 680
    visible: true
    title: qsTr("InfotainmentExample")

    Image {
        id: backgroundImage
        anchors.fill: root
        source: "stockWallpaper.jpg"
    }

    StatusBar {
        id: statusBar
    }

    Loader {
        id: mainLoader
        anchors {
            left: parent.left
            right: parent.right
            top: statusBar.bottom
            bottom: parent.bottom
        }
        source: "StackViewPage.qml"
    }
}
