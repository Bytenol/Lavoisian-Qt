import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../../components"
import Lavoisian 1.0

Page {

    Column {
        anchors.fill: parent

        // Navbar
        Rectangle {
            id: ptNavBar
            width: window.width
            height: window.height * 0.1
            color: window.bgColor1

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

                Rectangle {
                    width: parent.width * 0.4
                    height: parent.height
                    color: parent.parent.color
                    anchors.horizontalCenter: parent.Left

                    IconButtonText{ title: "Filter"; iconSrc:  "../../../resources/drawables/filter_alt_24dp.svg"; width: parent.height * 0.9
                        anchors.right: parent.right
                    }

                }
            }
        }

    }

    AtomModel { id: elementModel }

    Flickable {
        y: ptNavBar.height
        width: parent.width
        height: parent.height * 0.9
        // contentWidth: column.impl
        // contentHeight: column.implicitHeight
        clip: true

        Rectangle {
            y: ptNavBar.height
            width: parent.width
            height: parent.height * 0.9
            color: window.color

            Repeater {
                model: elementModel

                delegate: Rectangle {

                    property double boxSize: parent.height / 5
                    property double cardSize: boxSize * 0.9
                    property double spacing: (boxSize - cardSize) * 0.5

                    width: cardSize
                    height: cardSize
                    color: "yellow"

                    x: spacing + (model.xpos - 1) * boxSize
                    y: spacing + (model.ypos - 1) * boxSize

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            console.log(model.xpos)
                            console.log(model.ypos)
                            console.log(model.name)
                        }
                    }

                    Column {
                        width: cardSize
                        height: width

                        // atomic number and mass
                        Rectangle {
                            width: parent.width
                            height: parent.height * 0.2
                            color: window.bgColor

                            Row {
                                anchors.fill: parent

                                Label {
                                    text: model.id
                                    color: window.textColor
                                    width: parent.width * 0.3
                                    anchors.verticalCenter: parent.verticalCenter
                                }

                                Label {
                                    text: model.atomic_mass.toFixed(3)
                                    color: window.textColor
                                    width: parent.width * 0.7
                                    anchors.verticalCenter: parent.verticalCenter
                                }
                            }
                        }

                        // symbol
                        Rectangle {
                            width: parent.width
                            y: parent.height * 0.2
                            height: parent.height * 0.5
                            color: window.bgColor

                            Label {
                                color: window.textColor
                                text: model.symbol
                                font.pointSize: 20
                                anchors.centerIn: parent
                                font.bold: true
                            }
                        }

                        // db info [names, year ...]
                        Rectangle {
                            y: parent.height * 0.7
                            height: parent.height * 0.25
                            width: parent.width
                            color: window.bgColor
                            anchors.topMargin: 2

                            Label {
                                text: model.name
                                color: window.textColor
                                anchors.centerIn: parent
                            }
                        }

                        Rectangle {
                            y: parent.height * 0.95
                            width: parent.width
                            height: parent.height * 0.05
                            color: "green"
                        }

                    }
                }
            }
        }
    }


}
