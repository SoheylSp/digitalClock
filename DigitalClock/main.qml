
import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle{

        id:clockContainer
        width: 200
        height: 50
        color: "lightgray"
        border.color: "black"
        border.width: 1

        Text{

            id:digitalClock
            anchors.centerIn: parent
            font.pixelSize: 20
            text:currentDataTime
        }
        Timer{

            interval: 100
            running: true
            repeat: true
            onTriggered: digitalClock.text = new Date().toLocaleTimeString()
        }
    }

}
