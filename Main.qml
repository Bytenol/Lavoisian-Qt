import QtQuick
import QtQuick.Controls

Window {
    id: window
    width: 480
    height: 640
    visible: true
    color: "#222"
    title: qsTr("Lavoisian")

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: "qmls/pages/PeriodicTable.qml"
    }

}
