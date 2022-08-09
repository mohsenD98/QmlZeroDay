#include "SqlContactModel.h"

#include <QDebug>
#include <QSqlError>
#include <QSqlQuery>
#include <QSqlRecord>

static const char *contactsTablecontactName = "Contacts";
static void createTable();

SqlContactModel::SqlContactModel(QObject *parent) :
    QSqlTableModel(parent)
{
    createTable();
    setTable(contactsTablecontactName);;
    setEditStrategy(QSqlTableModel::OnManualSubmit);

    QSqlQuery query;
    if (!query.exec("SELECT * FROM Contacts"))
        qFatal("Contacts SELECT query failed: %s", qPrintable(query.lastError().text()));

    setQuery(query);
    if (lastError().isValid())
        qFatal("Cannot set query on SqlContactModel: %s", qPrintable(lastError().text()));
}

static void createTable()
{
    if (QSqlDatabase::database().tables().contains(QStringLiteral("Contacts"))) {
        // The table already exists; we don't need to do anything.
        return;
    }

    QSqlQuery query;
    if (!query.exec(
        "CREATE TABLE IF NOT EXISTS 'Contacts' ("
        "   'contactName' TEXT NOT NULL,"
        "   PRIMARY KEY(contactName)"
        ")")) {
        qFatal("Failed to query database: %s", qPrintable(query.lastError().text()));
    }

    query.exec("INSERT INTO Contacts VALUES('Albert Einstein')");
    query.exec("INSERT INTO Contacts VALUES('Ernest Hemingway')");
    query.exec("INSERT INTO Contacts VALUES('Hans Gude')");
}

QVariant SqlContactModel::data(const QModelIndex &index, int role) const
{
    if (role < Qt::UserRole)
        return QSqlQueryModel::data(index, role);

    const QSqlRecord sqlRecord = record(index.row());
    return sqlRecord.value(role - Qt::UserRole);
}

QHash<int, QByteArray> SqlContactModel::roleNames() const
{
    QHash<int, QByteArray> contactNames;
    contactNames[Qt::UserRole] = "contactName";
    return contactNames;
}

void SqlContactModel::addContact(const QString &contactName)
{
    QSqlRecord newRecord = record();
    newRecord.setValue("contactName", contactName);

    if (!insertRecord(rowCount(), newRecord)) {
        qWarning() << "Failed to add Table:" << lastError().text();
        return;
    }

    submitAll();
}


void SqlContactModel::deleteContact(const QVector<int> &rows)
{
    for(int row=0; row < rows.size(); ++row){
        removeRow(rows[row]);
    }

    submitAll();
}

