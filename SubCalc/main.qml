import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import brandon.SubCalc 1.0

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("SubCalc")

    property alias fsBox: fsBox

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page {
            id: thePage
            RowLayout {
                id: theRow
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 20
                anchors.top: parent.top

                TextField {
                    id: fsBox
                    placeholderText: qsTr("Text Field")
                    text: subCalc.fs
                }


            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }

    SubCalc {
        id: subCalc
        fs: "Hello"
    }
}
