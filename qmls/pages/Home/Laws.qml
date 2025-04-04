import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {

    Label {
        text: "This is the Law page"
        color: "white"
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            homeStackView.push("PeriodicTableSearch.qml")
            console.log("Page has been clicked")
        }
    }

}
