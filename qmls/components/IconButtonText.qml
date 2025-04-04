import QtQuick 2.15
import QtQuick.Controls


ToolButton {

    id: iconBtnText

    property alias title: iconBtnText.text
    property alias iconSrc: iconBtnText.icon.source

    text: title
    icon.source: iconSrc
    display: AbstractButton.TextUnderIcon  // Show text below the icon
    anchors.verticalCenter: parent.verticalCenter
    icon.width: parent.height * 0.5
    icon.height: parent.height * 0.5
}
