import QtQuick 2.0
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
Item {
    ListModel {
        id: listModel
        ListElement { name: "12"; page: "" ; imageSource: "" }
        ListElement { name: "13"; page: "" }
        ListElement { name: "14"; page: "" }
        ListElement { name: "15"; page: "" }
        ListElement { name: "16"; page: "" }
        ListElement { name: "17"; page: "" }
        ListElement { name: "18"; page: "" }
        ListElement { name: "19"; page: "" }
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
    }

    Button {
        id: previousButton
        anchors {
            right: nextButton.left
            rightMargin: 10
            verticalCenter: nextButton.verticalCenter
        }

        text: "Previous"
        onClicked: stackview.pop()
    }
}
