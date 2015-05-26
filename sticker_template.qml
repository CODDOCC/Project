import QtQuick 2.0

Rectangle {
    id:rect1
    objectName: "rect"
    width: 200
    height: 200
    color: "cyan"
    visible: true
        MouseArea {
            id: mouseAreaTop
            drag.target: rect1
            x: 0
            y: 0
            width: rect1.width
            height: 50


        }

        MouseArea {

            property int oldMouseRightX

            id: mouseAreaRight
            x: 192
            y: 49
            width: 8
            height: parent.height - 8
            anchors.rightMargin: 0
            anchors.bottomMargin: 8
            hoverEnabled: true
            anchors.right: parent.right
            anchors.bottom: parent.bottom
                onPressed: {
                    oldMouseRightX = mouseX //Запоминание позиции
                }
                onPositionChanged: {
                    if (pressed) {

                        rect1.width = rect1.width + (mouseX - oldMouseRightX)
                        mouseAreaBottom.width = rect1.width - 8 // Изменение правой mauseArea // -8 потому что размер угловой mauseArea 8х8
                        if ((rect1.width + (mouseX - oldMouseRightX)) < 200){ // Проверка минимального размера
                                rect1.width = 200
                               }
                        if ((rect1.width + (mouseX - oldMouseRightX)) > 500){ // Проверка максимального размера
                            rect1.width = 500
                        }
                    }
                }
}
        MouseArea {

            property int oldMouseBottomY

            id: mouseAreaBottom
            x: 0
            y: 192
            width: parent.width -8
            height: 8
            anchors.rightMargin: 8
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            onPressed: {
                oldMouseBottomY = mouseY
                }
                onPositionChanged: {
                    if (pressed) {
                        rect1.height = rect1.height + (mouseY - oldMouseBottomY)
                        mouseAreaRight.height = rect1.height - 8 // Изменение правой mauseArea
                        if ((rect1.height + (mouseY - oldMouseBottomY)) < 200){ // Проверка минимального размера
                               rect1.height = 200
                               mouseAreaRight.height = 192
                        }
                        if ((rect1.height + (mouseY - oldMouseBottomY)) > 500){ // Проверка максимального размера
                            rect1.height = 500
                            mouseAreaRight.height = 492
                        }
                    }
                }
        }

        MouseArea {
            property int oldMouseCornetX
            property int oldMouseCornerY
            id: mouseAreaCorner
            x: 192
            y: 192
            width: 8
            height: 8
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            onPressed: {
                oldMouseCornetX = mouseX
                    oldMouseCornerY = mouseY
                }
                onPositionChanged: {
                    if (pressed) {
                        rect1.width = rect1.width + (mouseX - oldMouseCornetX)
                        rect1.height = rect1.height + (mouseY - oldMouseCornerY)
                        mouseAreaRight.height = rect1.height - 8 // Изменение правой mauseArea
                        mouseAreaBottom.width = rect1.width  - 8 // Изменение нижней mauseArea

                    if ((rect1.width + (mouseX - oldMouseCornetX)) < 200){  // Проверка минимального размера
                            rect1.width = 200
                            mouseAreaRight.height = 192
                            mouseAreaBottom.width = 192
                           }
                    if ((rect1.height + (mouseY - oldMouseCornerY)) < 200){ // Проверка минимального размера
                            rect1.height = 200
                            mouseAreaRight.height = 192
                            mouseAreaBottom.width = 192
                           }
                    if ((rect1.width + (mouseX - oldMouseCornetX)) > 500){ // Проверка максимального размера
                            rect1.width = 500
                            mouseAreaRight.height = 492
                            mouseAreaBottom.width = 492
                    }
                    if ((rect1.height + (mouseY - oldMouseCornerY)) > 500){ // Проверка максимального размера
                        rect1.height = 500
                        mouseAreaRight.height = 492
                        mouseAreaBottom.width = 492
                    }
                    }
                }
        }

     }

