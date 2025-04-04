import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: periodicTable

    Rectangle {
        id: pt
        anchors.fill: parent


        Column {
            anchors.fill: parent

            Rectangle {
                id: navBar
                width: parent.width
                height: parent.height * 0.1
                color: "#222"
            }

            Rectangle {
                id: main
                width: parent.width
                height: parent.height * 0.8
                color: "red"
            }


            Rectangle {
                id: footer
                width: parent.width
                height: parent.height * 0.1
                color: "#222"

            }
        }
    }
}
