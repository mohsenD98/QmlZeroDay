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
        "'cardDesc' TEXT,"
        "'cardLabels' TEXT,"
        "'columnId' TEXT NOT NULL,"
        "FOREIGN KEY('kanbanTableId') REFERENCES KanbanTables ( name )"
        ")")) {
        qFatal("Failed to query database: %s", qPrintable(query.lastError().text()));
    }
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
        qWarning() << "Failed to add card:" << lastError().text();
        return;
    }
    submitAll();
}

void SqlKanbanColumnsModel::editCard(const int &row, const QString &cardDesc, const QString &labels)
{
    const QString timestamp = QDateTime::currentDateTime().toString(Qt::ISODate);

    if(!setData(index(row, 2), timestamp)){
        qWarning() << "Failed to setData Table:" << lastError().text();
        return;
    }
    if(!setData(index(row, 3), cardDesc)){
        qWarning() << "Failed to setData Table:" << lastError().text();
        return;
    }
    if(!setData(index(row, 4), labels)){
        qWarning() << "Failed to setData Table:" << lastError().text();
        return;
    }
    submitAll();
}

void SqlKanbanColumnsModel::addCardAndRemove(int row, const QString &kanbanTableId, const QString &cardDesc, const QString &labels, const QString &colId)
{
    addCard(kanbanTableId, cardDesc,labels, colId);
    removeCard(row);
    submitAll();
}

void SqlKanbanColumnsModel::setFilterToBoard(const QString &text)
{
    if(text == ""){
        const QString filterString = QString::fromLatin1(
            "(kanbanTableId = '%1' AND columnId = '%2')").arg(m_kanbanTableId).arg(m_colId);
        setFilter(filterString);
        select();

        return;
    }

    const QString filterString = QString::fromLatin1(
        "(kanbanTableId = '%1' AND columnId = '%2' AND cardDesc LIKE '%%3%')").arg(m_kanbanTableId).arg(m_colId).arg(text);
    setFilter(filterString);
    select();
}

void SqlKanbanColumnsModel::removeCard(int row)
{
    removeRow(row);
    submitAll();
}

void SqlKanbanColumnsModel::deleteCardsInTable()
{
    for(int i=0; i<rowCount(); ++i){
        removeRow(i);
    }
    submitAll();
}
