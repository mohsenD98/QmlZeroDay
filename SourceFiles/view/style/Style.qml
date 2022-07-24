pragma Singleton

import QtQuick 2.12

import "themes/dayBlue/"
import "themes/dayCustomBase/"
import "themes/night"
import "themes/nightCustomBase"
import "themes/nightGreen"

Item {
    // todo: set NightColors to QtObject to fix -> "Error: Cannot assign QObject* to NightColors_QMLTYPE_3*"
    // it's type is NightColors for IDE's autocompletion
    property NightColors theme: nightColors

    DayBlueColors{
        id: dayBlueColors
    }

    DayCustomBaseColors{
        id: dayCustomBaseColors
    }

    NightColors{
        id: nightColors
    }

    NightCustomColors{
        id: nightCustomColors
    }

    NightGreenColors{
        id: nightGreenColors
    }

    function setTheme(name){
        if(name === "NightGreenColors"){
            theme = nightGreenColors
        }
        if(name === "NightCustomColors"){
            theme = nightCustomColors
        }
        if(name === "NightColors"){
            theme = nightColors
        }
        if(name === "DayCustomBaseColors"){
            theme = dayCustomBaseColors
        }
        if(name === "DayBlueColors"){
            theme = dayBlueColors
        }
    }
}
