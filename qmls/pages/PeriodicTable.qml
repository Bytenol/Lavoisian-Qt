import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Item {
    id: periodicTable

    Rectangle {
        anchors.fill: parent

        Grid {
            columns: 1
            rows: 3
            anchors.fill: parent

            Rectangle {
                Layout.fillWidth: true
                height: parent.height * 0.1
                Text {
                    text: "Nav Bar"
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: parent.height * 0.8
                Text {
                    text: "Body Bar"
                }
            }

            Rectangle {
                Layout.fillWidth: true
                height: parent.height * 0.1
                Text {
                    text: "Footer Bar"
                }
            }

        }   // Grid ends
    }
}
