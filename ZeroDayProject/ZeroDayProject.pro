QT += quick sql core5compat

DESTDIR += $$PWD/../Build/

SOURCES += \
        ./SourceFiles/main.cpp \

RESOURCES += \
        Resources/qrc/emoji_1.qrc \
        Resources/qrc/emoji_2.qrc \
        Resources/qrc/emoji_3.qrc \
        Resources/qrc/emoji_4.qrc \
        Resources/qrc/emoji_5.qrc \
        Resources/qrc/emoji_6.qrc \
        Resources/qrc/emoji_preview.qrc \
        Resources/qrc/icons.qrc \
        SourceFiles/view/qml.qrc \
        translations.qrc

INCLUDEPATH +=  ../ZeroDayLib

# linux release
#LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib.a

# avd release
LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib_armeabi-v7a.a

# sumsong release
#LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib_arm64-v8a.a

TRANSLATIONS += \
        Resources/translations/qrcQMLTelegram_fa_IR.ts

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/res/values/libs.xml
