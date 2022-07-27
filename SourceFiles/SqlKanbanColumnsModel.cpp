#include "SqlKanbanColumnsModel.h"

#include <QDateTime>
#include <QDebug>
#include <QSqlError>
#include <QSqlRecord>
#include <QSqlQuery>

static void createTable();

static const char *kanbanColumnsTableName = "KanbanColumns";

SqlKanbanColumnsModel::SqlKanbanColumnsModel(QObject *parent):
    QSqlTableModel(parent)
{
    createTable();
    setTable(kanbanColumnsTableName);
    setSort(2, Qt::DescendingOrder); // sort on time
    // Ensures that the model is sorted correctly after submitting a new row.
    setEditStrategy(QSqlTableModel::OnManualSubmit);

}
static void createTable()
{
    if (QSqlDatabase::database().tables().contains(kanbanColumnsTableName)) {
        // The table already exists; we don't need to do anything.
        return;
    }

    QSqlQuery query;
    if (!query.exec(
        "CREATE TABLE IF NOT EXISTS 'KanbanColumns' ("
        "'author' TEXT NOT NULL,"
        "'kanbanTableId' TEXT NOT NULL,"
        "'timestamp' TEXT NOT NULL,"
        "'cardDesc' TEXT NOT NULL,"
        "'cardLabels' TEXT NOT NULL,"
        "'columnId' TEXT NOT NULL,"
        "FOREIGN KEY('kanbanTableId') REFERENCES KanbanTables ( name )"
        ")")) {
        qFatal("Failed to query database: %s", qPrintable(query.lastError().text()));
    }

    query.exec("INSERT INTO KanbanColumns VALUES('Mohsen', 'Kanban - daily to do', '2016-01-07T14:36:06', 'Hello!', 'Bug,#BC2E2A,Feature,#1F7E38,Important,#B6AA37', 'To Do')");
    query.exec("INSERT INTO KanbanColumns VALUES('Mohsen', 'Kanban - daily to do', '2016-01-07T14:36:16', 'Good afternoon.', 'Feature,#1F7E38,Important,#B6AA37', 'In Progress')");
    query.exec("INSERT INTO KanbanColumns VALUES('Mohsen', 'Kanban - weekly to do', '2016-01-01T11:24:53', 'Hi!', 'Bug,#BC2E2A,Feature,#1F7E38', 'In Progress')");
    query.exec("INSERT INTO KanbanColumns VALUES('Mohsen', 'Kanban - weekly to do', '2016-01-07T14:36:16', 'Good morning.', 'Bug,#BC2E2A,Important,#B6AA37', 'To Do')");
    query.exec("INSERT INTO KanbanColumns VALUES('Mohsen', 'Kanban - monthly to do', '2015-11-20T06:30:02', 'God morgen. Har du fått mitt maleri?', 'Feature,#1F7E38,Important,#B6AA37', 'To Do')");
}


void SqlKanbanColumnsModel::setupFilters()
{
    const QString filterString = QString::fromLatin1(
        "(kanbanTableId = '%1' AND columnId = '%2')").arg(m_kanbanTableId).arg(m_colId);
    setFilter(filterString);
    select();
}

QString SqlKanbanColumnsModel::kanbanTableId() const
{
    return m_kanbanTableId;
}

void SqlKanbanColumnsModel::setKanbanTableId(const QString &kanbanTableId)
{
    if (kanbanTableId == m_kanbanTableId)
        return;

    m_kanbanTableId = kanbanTableId;

    setupFilters();

    emit kanbanTableIdChanged();
}

QString SqlKanbanColumnsModel::colId() const
{
    return m_colId;
}

void SqlKanbanColumnsModel::setColId(const QString &colId)
{
    if (colId == m_colId)
        return;

    m_colId = colId;

    setupFilters();

    emit colIdChanged();
}

QVariant SqlKanbanColumnsModel::data(const QModelIndex &index, int role) const
{
    if (role < Qt::UserRole)
        return QSqlTableModel::data(index, role);

    const QSqlRecord sqlRecord = record(index.row());
    return sqlRecord.value(role - Qt::UserRole);
}

QHash<int, QByteArray> SqlKanbanColumnsModel::roleNames() const
{
    QHash<int, QByteArray> names;
    names[Qt::UserRole] = "author";
    names[Qt::UserRole + 1] = "kanbanTableId";
    names[Qt::UserRole + 2] = "timestamp";
    names[Qt::UserRole + 3] = "cardDesc";
    names[Qt::UserRole + 4] = "cardLabels";
    names[Qt::UserRole + 5] = "columnId";
    return names;
}

void SqlKanbanColumnsModel::addCard(const QString &kanbanTableId, const QString &cardDesc, const QString &labels, const QString &colId)
{
    const QString timestamp = QDateTime::currentDateTime().toString(Qt::ISODate);

    QSqlRecord newRecord = record();
    newRecord.setValue("author", "Mohsen");
    newRecord.setValue("kanbanTableId", kanbanTableId);
    newRecord.setValue("timestamp", timestamp);
    newRecord.setValue("cardDesc", cardDesc);
    newRecord.setValue("cardLabels", labels);
    newRecord.setValue("columnId", colId);
    if (!insertRecord(rowCount(), newRecord)) {
        qWarning() << "Failed to send message:" << lastError().text();
        return;
    }

    submitAll();
}
