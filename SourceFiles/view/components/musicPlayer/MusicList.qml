import QtQuick 2.12
import QtQuick.Controls 2.12

ListView {
    id: listview
    model:["Mohsen yeganeh", "Mohsen Chavoshi", "Mohsen dehghanzadeh", "Mohsen dehghanzadeh", "Mohsen dehghanzadeh", "Mohsen dehghanzadeh"]
    clip: true

    property color frontColor

    delegate: MusicDelegate{
        width: parent.width
        height: 55
        musicArtist: modelData
        musicTitle: modelData
        textColor: frontColor
    }
}
