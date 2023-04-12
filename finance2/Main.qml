import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
            id: page1
            anchors.fill: parent

            Text {
                text: "This is page 1"
                anchors.centerIn: parent
                color: "black"
                font.pixelSize: 30
            }

            Column
            {

                Item {
                    width: 200
                    height: 200



                    Canvas {
                        anchors.fill: parent

                        onPaint: {
                            var ctx = getContext("2d")
                            var centerX = width / 2
                            var centerY = height / 2
                            var radius = Math.min(centerX, centerY) - 10

                            // Draw the background circle
                            ctx.strokeStyle = "lightgray"
                            ctx.lineWidth = 10
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI)
                            ctx.stroke()

                            // Draw the progress circles
                            var startAngle = -Math.PI / 2
                            var endAngle = startAngle + 2 * Math.PI * percentage1
                            ctx.strokeStyle = "red"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage2
                            ctx.strokeStyle = "blue"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage3
                            ctx.strokeStyle = "green"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage4
                            ctx.strokeStyle = "yellow"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage5
                            ctx.strokeStyle = "orange"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage6
                            ctx.strokeStyle = "purple"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage7
                            ctx.strokeStyle = "cyan"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage8
                            ctx.strokeStyle = "magenta"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage9
                            ctx.strokeStyle = "gray"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage10
                            ctx.strokeStyle = "pink"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()

                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage11
                            ctx.strokeStyle = "lightblue"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()
                            startAngle = endAngle
                            endAngle = startAngle + 2 * Math.PI * percentage12
                            ctx.strokeStyle = "brown"
                            ctx.beginPath()
                            ctx.arc(centerX, centerY, radius, startAngle, endAngle)
                            ctx.stroke()
                        }
                        property real percentage1: 1/12
                        property real percentage2: 1/12
                        property real percentage3: 1/12
                        property real percentage4: 1/12
                        property real percentage5: 1/12
                        property real percentage6: 1/12
                        property real percentage7: 1/12
                        property real percentage8: 1/12
                        property real percentage9: 1/12
                        property real percentage10: 1/12
                        property real percentage11: 1/12
                        property real percentage12: 1/12
                    }
                }
                Row
                {
                    id: row
                    TextField
                    {
                        id: textField
                        placeholderText: "Type"
                    }
                    Button
                    {
                        id: button
                        text: "Click"
                    }
                }
            }

            Button {
                text: "Go to page 2"
                onClicked: stackView.push(page2)
                anchors.centerIn: parent
            }
        }

        // Second page
        Rectangle {
            id: page2
            anchors.fill: parent

            Text {
                text: "This is page 2"
                anchors.centerIn: parent
                color: "black"
                font.pixelSize: 30
            }

            Button {
                text: "Go to page 1"
                onClicked: stackView.pop()
                anchors.centerIn: parent
            }
        }

        // Stack view to manage the pages
        StackView {
            id: stackView
            anchors.fill: parent
            initialItem: page1
        }



}
