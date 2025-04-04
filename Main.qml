import QtQuick
import QtQuick.Controls
// import "qmls/pages/Home"

Window {

    property string bgColor: "#222"
    property string bgColor1: "#333"
    property string textColor: "#ccc"

    id: window
    width: 480
    height: 640
    visible: true
    color: bgColor
    title: qsTr("Lavoisian")


    Loader {
        source: "qmls/pages/Home/HomeLayout.qml"
        anchors.fill: parent
    }

}
