QT += quick

SOURCES += \
        ./SourceFiles/main.cpp

RESOURCES += \
        Resources/qrc/emoji_1.qrc \
        Resources/qrc/emoji_2.qrc \
        Resources/qrc/emoji_3.qrc \
        Resources/qrc/emoji_4.qrc \
        Resources/qrc/emoji_5.qrc \
        Resources/qrc/emoji_6.qrc \
        Resources/qrc/emoji_preview.qrc \
        Resources/qrc/sounds.qrc \
        SourceFiles/view/qml.qrc

#TRANSLATIONS += \
#    QMLTelegram_fa_IR.ts

#CONFIG += lrelease

#CONFIG += embed_translations

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
