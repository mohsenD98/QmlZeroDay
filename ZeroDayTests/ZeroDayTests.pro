QT += testlib sql
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase

CONFIG -= app_bundle

TEMPLATE = app

SOURCES +=  \
        main.cpp

HEADERS += \
    Test1.h \
    Test2.h
