TEMPLATE = app
QT += testlib sql quick
TARGET = ZeroDayTests

SOURCES +=  \
        main.cpp

HEADERS += \
    TestSqlContactModel.h \
    TestSqlConversationModel.h \
    TestSqlKanbanColumnsModel.h \
    TestSqlKanbanTableModel.h

INCLUDEPATH +=  ../ZeroDayLib

# linux release
#LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib.a

# avd & linux release
LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib_armeabi-v7a.a

# sumsong release
#LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib_arm64-v8a.a
