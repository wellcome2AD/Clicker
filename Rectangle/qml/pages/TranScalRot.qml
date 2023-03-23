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

            Rectangle{
                width: 250
                height: 250
                color: "black"
                border.color: "black"
                transform: [Translate{x: 500}, Scale{xScale: 0.5}, Rotation{angle: 45}]
            }

            onClicked: console.log("Clicked " + index)
        }
        VerticalScrollDecorator {}
    }
}
