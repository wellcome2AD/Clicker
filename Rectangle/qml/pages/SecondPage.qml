import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    SilicaListView {
        id: listView
        model: 1
        anchors.fill: parent
        header: PageHeader {
            title: qsTr("Nested Page")
        }
        delegate: BackgroundItem {
            id: delegate

            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Item") + " " + index
                anchors.verticalCenter: parent.verticalCenter
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            Rectangle{
                width: 250
                height: 250
                color: "#FF0000"
                border.color: "black"
            }

            Rectangle{
                x: 250
                y: 125
                width: 250
                height: 250
                color: "#00FF00"
                border.color: "black"
            }
            Rectangle{
                id: rect1
                Text{
                    text: "Квадрат"
                    color: "white"
                    anchors.centerIn: rect1
                }

                x: 375
                width: 250
                height: 250
                color: "#0000FF"
                border.color: "black"
            }

            Row{
                y: 400
                spacing: 50
                Rectangle{
                    width: 150
                    height: 150
                    color: "#FF0000"
                    border.color: "black"
                }

                Rectangle{
                    width: 150
                    height: 150
                    color: "#00FF00"
                    border.color: "black"
                }
                Rectangle{
                    width: 150
                    height: 150
                    color: "#0000FF"
                    border.color: "black"
                }
            }
            Row {
                y: 600
                spacing: 250
                Rectangle{
                    width: 150
                    height: 150
                    color: "pink"
                    border.color: "black"
                }

                Rectangle{
                    width: 150
                    height: 150
                    color: "black"
                    border.color: "black"
                }

            }

            Grid{
                rows: 2
                columns: 3
                y: 800
                spacing: 50
                Rectangle{
                    width: 150
                    height: 150
                    color: "#FF0000"
                    border.color: "black"
                }

                Rectangle{
                    width: 150
                    height: 150
                    color: "#00FF00"
                    border.color: "black"
                }
                Rectangle{
                    width: 150
                    height: 150
                    color: "#0000FF"
                    border.color: "black"
                }

                Rectangle{
                    width: 150
                    height: 150
                    color: "pink"
                    border.color: "black"
                }

                Rectangle{
                    opacity: 0
                    width: 150
                    height: 150
                    border.color: "black"
                }


                Rectangle{
                    width: 150
                    height: 150
                    color: "black"
                    border.color: "black"
                }
            }

            onClicked: console.log("Clicked " + index)
        }
        VerticalScrollDecorator {}
    }
}
