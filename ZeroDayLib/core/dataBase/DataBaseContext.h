#pragma once

#include <QStandardPaths>
#include <QSqlDatabase>
#include <QSqlError>
#include <QtQml>

class DataBaseContext{
public:
    static void connectToDatabase()
    {
        QSqlDatabase database = QSqlDatabase::database();
        if (!database.isValid()) {
            database = QSqlDatabase::addDatabase("QSQLITE");
            if (!database.isValid())
                qFatal("Cannot add database: %s", qPrintable(database.lastError().text()));
        }

        const QDir writeDir = QStandardPaths::writableLocation(QStandardPaths::AppDataLocation) + "/ZeroDay";
        if (!writeDir.mkpath("."))
            qFatal("Failed to create writable directory at %s", qPrintable(writeDir.absolutePath()));

        // Ensure that we have a writable location on all devices.
        const QString fileName = writeDir.absolutePath() + "/zeroDay-database.sqlite3";

        // When using the SQLite driver, open() will create the SQLite database if it doesn't exist.
        database.setDatabaseName(fileName);
        if (!database.open()) {
            qFatal("Cannot open database: %s", qPrintable(database.lastError().text()));
            QFile::remove(fileName);
        }
    }

};

