pragma Singleton

import QtQuick 2.12
import QtQuick.Controls.Material 2.12

import "themes/dayBlue/"
import "themes/dayCustomBase/"
import "themes/night"
import "themes/nightCustomBase"
import "themes/nightGreen"
import "themes/current"

Item {
    // todo: set NightColors to QtObject to fix -> "Error: Cannot assign QObject* to NightColors_QMLTYPE_3*"
    // it's type is NightColors for IDE's autocompletion
    property Theme theme: currentTheme
    property string currentThemeName: "NightColors"

    Theme{
        id: currentTheme

        model: nightColors
    }

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
        currentThemeName = name
        if(name === "NightGreenColors"){
            currentTheme.model = nightGreenColors
            Material.theme = Material.Dark
        }
        if(name === "NightCustomColors"){
            currentTheme.model = nightCustomColors
            Material.theme = Material.Dark
        }
        if(name === "NightColors"){
            currentTheme.model = nightColors
            Material.theme = Material.Dark
        }
        if(name === "DayCustomBaseColors"){
            currentTheme.model = dayCustomBaseColors
            Material.theme = Material.Light
        }
        if(name === "DayBlueColors"){
            currentTheme.model = dayBlueColors
            Material.theme = Material.Light
        }
    }
}
