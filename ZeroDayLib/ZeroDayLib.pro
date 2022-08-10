TEMPLATE = lib

QT += quick sql

CONFIG += static

TARGET = ZeroDayLib

DESTDIR += $$PWD/Build/

SOURCES += \
        core/viewModel/conversation/SqlContactModel.cpp \
        core/viewModel/board/SqlKanbanColumnsModel.cpp \
        core/viewModel/board/SqlKanbanTableModel.cpp \
        core/viewModel/conversation/SqlConversationModel.cpp

HEADERS += \
        core/dataBase/DataBaseContext.h \
        core/viewModel/conversation/SqlContactModel.h \
        core/viewModel/board/SqlKanbanColumnsModel.h \
        core/viewModel/board/SqlKanbanTableModel.h \
        core/viewModel/conversation/SqlConversationModel.h
