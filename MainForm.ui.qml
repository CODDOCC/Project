import QtQuick 2.3

Rectangle {
    property alias mouseArea: mouseArea

    width: 640
    height: 480

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }

    Text {
        anchors.centerIn: parent
        text: "Hello World"
    }
}
