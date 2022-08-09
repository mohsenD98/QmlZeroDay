CONFIG += testlib sql

TEMPLATE = app
DEPENDPATH += . ../ZeroDayProject/SourceFiles
INCLUDEPATH += . ../ZeroDayProject/SourceFiles
DESTDIR = ./

unix:QMAKE_POST_LINK=./$$TARGET
win32:QMAKE_POST_LINK=$${TARGET}.exe
