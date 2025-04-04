import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Page {
    anchors.margins: 3

    Column {
        anchors.fill: parent

        // Navbar
        Rectangle {
            width: parent.width
            height: window.height * 0.1
            color: "#333"
            z: 2

            Row {
                anchors.fill: parent
                anchors.margins: 3

                Label {
                    text: "<h1>Elements</h1>"
                    color: "#ccc"
                    // font.weight: "bold"
                    // font.family: "Arial"
                    // font.pointSize: 20
                    anchors.verticalCenter: parent.verticalCenter
                    width: parent.width * 0.6
                }
            }
        }

        Rectangle {
            width: parent.width
            height: parent.height * 0.9
            ListView {
                id: listView
                anchors.fill: parent
                model: ListModel {
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }
                    ListElement { name: "Hydrogen"; symbol: "H"; atomicNumber: 1.008 }
                    ListElement { name: "Helium"; symbol: "He"; atomicNumber: 2.004 }
                    ListElement { name: "Lithium"; symbol: "Li"; atomicNumber: 3.123 }

                }

                delegate: Rectangle {
                    width: listView.width
                    height: 50
                    color: window.color

                    Row {
                        width: parent.width
                        spacing: 20

                        Rectangle {
                            width: 40
                            height: 40
                            color: Qt.rgba(Math.random(), Math.random(), Math.random(), 1)
                            radius: 50

                            Label {
                                text: "A"
                                font.weight: bold
                                anchors.centerIn: parent
                            }
                        }

                        Label {
                            text: "<div><h3>" + model.name + "</h3><p>" + model.atomicNumber + " (g/mol)</p></div>"
                        }
                    }
                }
            }

        }


    }   // column ends



}
