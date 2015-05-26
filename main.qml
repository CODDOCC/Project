import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            //Qt.quit();
        }

    }
    Rectangle {
        id: rectangle1
        x: 468
        y: 77
        width: 200
        height: 200
        color: "#f8f6cb"
        radius: 0
        border.color: "#bcfaa0"
        visible: true
            MouseArea {
                id: mouseArea1
                drag.target: rectangle1
                x: 0
                y: 5
                width: rectangle1.width
                height: 50
                onClicked: {

            }
    }
}
}
