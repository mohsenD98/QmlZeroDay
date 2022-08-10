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

LIBS += $$PWD/../ZeroDayLib/Build/libZeroDayLib.a

