import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "pagesizeingu.liu-xiao-guo"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true


    width: units.gu(100)
    height: units.gu(75)

    Page {
        header: Item { visible: false }

        Rectangle {
            id: rect
            anchors.fill: parent

            Component.onCompleted: {
                console.log("rect: " + rect.width + " " + rect.height)
                client.text = "client area width: " + rect.width/units.gu(1) + "gu height: " + rect.height/units.gu(1) + "gu"
            }

            onWidthChanged: {
                console.log("rect: " + rect.width + " " + rect.height)
                clientgu.text = "client area width: " + Math.round(rect.width/units.gu(1)) + "gu height: " + Math.round(rect.height/units.gu(1)) + "gu"
                client.text = "client area (" + rect.width + ", " + height + ")"
            }

            onHeightChanged: {
                console.log("rect: " + rect.width + " " + rect.height)
                client.text = "client area (" + rect.width + ", " + height + ")"
                clientgu.text = "client area width: " + Math.round(rect.width/units.gu(1)) + "gu height: " + Math.round(rect.height/units.gu(1)) + "gu"
            }
        }

        Column {
            anchors.centerIn: parent

            Label {
                id: info
            }

            Label {
                id: resulution
            }

            Label {
                id: gutopixel
            }

            Label {
                id: clientgu
            }

            Label {
                id: client
            }

            Label {
                text: "1 dp = " + units.dp(1) + " pixels"
            }

            Label {
                text: "1 gridUnit = " + units.gridUnit + " pixels"
            }
        }

        Component.onCompleted: {
            console.log("screen: " + screensize.width + " " + screensize.height)
            resulution.text = "screen resolution: (" +  screensize.width + ", " + screensize.height + ")"
            info.text = "screen width: " + Math.round(screensize.width/units.gu(1)) + "gu  height: " + Math.round(screensize.height/units.gu(1)) + "gu"
            gutopixel.text = "1 units.gu = " + units.gu(1) + " pixels"
        }
    }
}

