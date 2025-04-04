import QtQuick
import QtQuick.Controls
import "../../components"


Page {
    anchors.fill: parent

    Column {
        anchors.fill: parent

        Rectangle {
            width: parent.width
            height: parent.height * 0.9

            StackView {
                id: homeStackView
                anchors.fill: parent
                initialItem: "PeriodicTable.qml"
            }
        }

        Rectangle {
            width: parent.width
            height: parent.height * 0.1
            color: "#333"
            y: parent.height * 0.9

            Row {
                id: homeFooter
                anchors.fill: parent

                IconButtonText{ title: "Home"; iconSrc:  "../../../resources/drawables/table_24dp.svg"; width: parent.width / 5
                    onClicked: {
                        homeStackView.push("PeriodicTable.qml")
                    }
                }
                IconButtonText{ title: "Search"; iconSrc:  "../../../resources/drawables/search_24dp.svg"; width: parent.width / 5
                    onClicked: {
                        homeStackView.push("PeriodicTableSearch.qml")
                    }
                }
                IconButtonText{ title: "Tables"; iconSrc:  "../../../resources/drawables/table_view_24dp.svg"; width: parent.width / 5
                    onClicked: {
                        homeStackView.push("Tables.qml")
                    }
                }
                IconButtonText{ title: "Laws"; iconSrc:  "../../../resources/drawables/alt_route_24dp.svg"; width: parent.width / 5
                    onClicked: {
                        homeStackView.push("Laws.qml")
                    }
                }
                IconButtonText{ title: "User"; iconSrc:  "../../../resources/drawables/account_circle_24dp.svg"; width: parent.width / 5
                    onClicked: {
                        homeStackView.push("User.qml")
                    }
                }
            }

        }

    }
}
