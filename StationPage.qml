import QtQuick 2.0
import QtQuick.Controls 2.12
Item {
    anchors.fill: parent

    Text {
        id: stationName
        anchors {
            top: parent.top
            left: parent.left
            margins: 40
        }

        font.pixelSize: 48
        color: "white"
        text: "FM 105.7"
    }

    Text {
        id: artistSongLabel
        anchors {
            top: stationName.bottom
            left: stationName.left
        }
        font.pixelSize: 24
        color: "white"
        text: "Cant' Stop - Red Hot Chilli Peppers"
    }

    Button {
        id: backButtton
        anchors {
            bottom: parent.bottom
            left: parent.left
            margins: 40
        }
        text: "Back"
        onClicked: mainLoader.source = "StackViewPage.qml"
    }

    Button {
        id: sourceButton
        anchors {
            bottom: parent.bottom
            right: parent.right
            margins: 40
        }
        text: "Source"
    }
}
