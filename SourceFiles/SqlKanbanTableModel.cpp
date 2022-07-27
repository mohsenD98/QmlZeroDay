#include "SqlKanbanTableModel.h"

#include <QDebug>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlQuery>

static void createTable();

SqlKanbanTableModel::SqlKanbanTableModel(QObject *parent):
    QSqlQueryModel(parent)
{
    createTable();

    QSqlQuery query;
    if (!query.exec("SELECT * FROM KanbanTables"))
        qFatal("KanbanTables SELECT query failed: %s", qPrintable(query.lastError().text()));

    setQuery(query);
    if (lastError().isValid())
        qFatal("Cannot set query on KanbanTables: %s", qPrintable(lastError().text()));
}

QVariant SqlKanbanTableModel::data(const QModelIndex &index, int role) const
{
    if (role < Qt::UserRole)
        return QSqlQueryModel::data(index, role);

    const QSqlRecord sqlRecord = record(index.row());
    return sqlRecord.value(role - Qt::UserRole);
}

QHash<int, QByteArray> SqlKanbanTableModel::roleNames() const
{
    QHash<int, QByteArray> names;
    names[Qt::UserRole] = "name";
    names[Qt::UserRole + 1] = "columns";
    names[Qt::UserRole + 2] = "labels";
    return names;
}

#include <iostream>
static void createTable()
{
    if (QSqlDatabase::database().tables().contains(QStringLiteral("KanbanTables"))) {
        // The table already exists; we don't need to do anything.
        return;
    }

    QSqlQuery query;
    if (!query.exec(
        "CREATE TABLE IF NOT EXISTS 'KanbanTables' ("
        "   'name' TEXT NOT NULL,"
        "   'columns' TEXT NOT NULL,"
        "   'labels' TEXT NOT NULL,"
        "   PRIMARY KEY(name)"
        ")")) {
        qFatal("Failed to query database: %s", qPrintable(query.lastError().text()));
    }

    query.exec("INSERT INTO KanbanTables VALUES('Kanban - daily to do', 'To Do,In Progress,Done','Bug,Feature,Important')");
    query.exec("INSERT INTO KanbanTables VALUES('Kanban - weekly to do', 'To Do,In Progress,Test,Done','Bug,Important')");
    query.exec("INSERT INTO KanbanTables VALUES('Kanban - monthly to do', 'To Do,Done','Feature,Important')");
}
