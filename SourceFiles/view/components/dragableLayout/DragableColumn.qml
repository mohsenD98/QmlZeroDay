import QtQuick 2.12
import QtQml.Models 2.1
import QtQuick.Particles 2.0

import MGram.sql.Kanban 1.0

import "../listDelegates"
import "../menu"

GridView {
    id: root
    cellWidth: width
    cellHeight: 150
    height: childrenRect.height
    width: parent.width

    function addCard(data){
        visualModel.model.addCard(mKanbanTableId, data.mTitle, data.mLabelsModel, colName)
    }

    function reset(){
        visualModel.model.kanbanTableId = mKanbanTableId
        visualModel.model.colId = colName
        visualModel.model.submitAll()
    }

    signal reloadAll()

    property string mKanbanTableId
    property var allColIds

    property string colName
    property real selectedCardRow: -1

    Behavior on height{
        NumberAnimation{
            duration: 120
        }
    }

    displaced: Transition {
        NumberAnimation { properties: "x,y"; easing.type: Easing.OutQuad }
    }

    model: DelegateModel {
        id: visualModel
        model: SqlKanbanColumnsModel{

        }

        delegate: DropArea {
            id: delegateRoot

            width: parent.width
            height: card.height

            onEntered: visualModel.items.move(drag.source.visualIndex, card.visualIndex)
            property int visualIndex: DelegateModel.itemsIndex
            Binding { target: card; property: "visualIndex"; value: visualIndex }

            BoardCard {
                id: card
                property int visualIndex: 0

                title: model.cardDesc
                labels: model.cardLabels
                time: model.timestamp
                glowing: selectedCardRow === model.row

                property var refRoot: root

                Component.onCompleted: {
                    if(0 === model.row){
                        starRain.enabled= true
                        starRainTimer.running = true
                    }
                }


                function addToNextColumn(){
                    var collist = allColIds.split(",")
                    var currentId = collist.findIndex(q=>q === colName)

                    if(currentId === -1){
                        console.log("semething went wring! ")
                        return
                    }

                    if(currentId === collist.length-1){
                        // do nothing
                    }else{
                        visualModel.model.addCardAndRemove(model.row, mKanbanTableId, model.cardDesc, model.cardLabels, collist[currentId+1])
                        refRoot.reloadAll()
                    }
                }

                function addToPrevColumn(){
                    var collist = allColIds.split(",")
                    var currentId = collist.findIndex(q=>q === colName)

                    if(currentId === -1){
                        console.log("semething went wring! ")
                        return
                    }

                    if(currentId === 0){
                        // do nothing
                    }else{
                        visualModel.model.addCardAndRemove(model.row, mKanbanTableId, model.cardDesc, model.cardLabels, collist[currentId-1])
                        refRoot.reloadAll()
                    }
                }


                CardMoveOptions{
                    id: cardMoveOptions

                    anchors.centerIn: parent

                    onNextColClicked: {
                        card.addToNextColumn()
                    }
                    onPrevColClicked: {
                        card.addToPrevColumn()
                    }
                }

                TapHandler {
                    onTapped: {
                        if(selectedCardRow === model.row){
                            selectedCardRow = -1
                        }else{
                            selectedCardRow = model.row
                        }
                        cardMoveOptions.open()
                    }
                }

                ParticleSystem {
                    anchors.fill: parent

                    ImageParticle {
                        anchors.fill: parent
                        source: "qrc:///particleresources/star.png"
                        alpha: 0
                        alphaVariation: 0.2
                        colorVariation: 1.0
                    }

                    Emitter {
                        id: starRain
                        anchors.centerIn: parent
                        emitRate: 30
                        lifeSpan: 2000
                        size: 20
                        sizeVariation: 20
                        velocity: AngleDirection {angleVariation: 180; magnitude: 60}
                        enabled: false
                    }
                }

                Timer{
                    id: starRainTimer
                    repeat: false
                    interval: 1000
                    onTriggered: {
                        starRain.enabled= false
                    }
                }

                DragHandler {
                    id: dragHandler
                    target: card
                }

                Drag.active: dragHandler.active
                Drag.source: card
                Drag.hotSpot.x: 75
                Drag.hotSpot.y: 75

                states: [
                    State {
                        when: card.Drag.active
                        ParentChange {
                            target: card
                            parent: root
                        }

                        AnchorChanges {
                            target: card
                            anchors.horizontalCenter: undefined
                            anchors.verticalCenter: undefined
                        }
                    }
                ]

                onDeleteRequest: {
                    visualModel.model.removeCard(model.row)
                }

                onDuplicateRequest: {
                    addCard({mLabelsModel:model.cardLabels, mTitle:model.cardDesc, selected:false})
                }
            }
        }
    }
}
