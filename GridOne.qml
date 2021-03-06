import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
Item {
    ListModel {
        id: listModel
        ListElement { name: "One"; page: "StationPage.qml" }
        ListElement { name: "Two"; page: "" }
        ListElement { name: "Three"; page: "" }
        ListElement { name: "Four"; page: "" }
        ListElement { name: "Five"; page: "" }
        ListElement { name: "Six"; page: "" }
        ListElement { name: "Seven"; page: "" }
        ListElement { name: "Eight"; page: "" }
    }

    GridView {
        id: gridView
        anchors.fill: parent
        model: listModel
        cellHeight: 240
        cellWidth: 240
        delegate: Rectangle {
            width: 200
            height: 200
            color: "grey"
            radius: 5
            Text {
                color: "white"
                text: name
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: mainLoader.source = page
            }
        }
    }

    Button {
        id: nextButton
        anchors {
            right: parent.right
            bottom: parent.bottom
            margins: 20
        }

        text: "Next"
        onClicked: stackview.push( "GridTwo.qml" )
    }

    Button {
        id: previousButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }

        text: "Previous"
    }
}
