#include "SqlKanbanTableModel.h"

#include <QDebug>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlQuery>

static void createTable();

static const char *kanbanTableName = "KanbanTables";

SqlKanbanTableModel::SqlKanbanTableModel(QObject *parent):
    QSqlTableModel(parent)
{
    createTable();
    setTable(kanbanTableName);;
    setEditStrategy(QSqlTableModel::OnManualSubmit);

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

static void createTable()
{
    if (QSqlDatabase::database().tables().contains(kanbanTableName)) {
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

    query.exec("INSERT INTO KanbanTables VALUES('Kanban - weekly to do', 'To Do,In Progress,Test,Done','Bug,#BC2E2A,Important,#B6AA37')");
    query.exec("INSERT INTO KanbanTables VALUES('Kanban - monthly to do', 'To Do,Done','Feature,#1F7E38,Important,#B6AA37')");
}

void SqlKanbanTableModel::addTabel(const QString &name, const QString &columns, const QString &labels)
{
    QSqlRecord newRecord = record();
    newRecord.setValue("name", name);
    newRecord.setValue("columns", columns);
    newRecord.setValue("labels", labels);

    if (!insertRecord(rowCount(), newRecord)) {
        qWarning() << "Failed to add Table:" << lastError().text();
        return;
    }

    submitAll();
}

void SqlKanbanTableModel::removeTable(int row)
{
    removeRow(row);
    submitAll();
}

void SqlKanbanTableModel::updateTableName(const int &row, const QString &newVal)
{
    if(!setData(index(row, 0), newVal)){
        qWarning() << "Failed to setData Table:" << lastError().text();
        return;
    }
    submitAll();
}
void SqlKanbanTableModel::addTableColor(const int &row, const QString &newVal)
{
    if(!setData(index(row, 2), newVal)){
        qWarning() << "Failed to setData Table:" << lastError().text();
        return;
    }
    submitAll();
}
