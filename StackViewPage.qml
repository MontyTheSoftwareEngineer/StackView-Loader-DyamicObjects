import QtQuick 2.0
import QtQuick.Controls 2.12

Item {
    anchors.fill: parent
    StackView {
        id: stackview
        anchors.fill: parent
        initialItem: "GridOne.qml"
    }
}
