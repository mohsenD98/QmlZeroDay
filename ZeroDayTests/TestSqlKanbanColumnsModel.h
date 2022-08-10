#include <QtTest/QTest>

#include <QSqlQuery>
#include <QSqlError>

#include "core/viewModel/board/SqlKanbanColumnsModel.h"

class TestSqlKanbanColumnsModel : public QObject
{
    Q_OBJECT

public:
    TestSqlKanbanColumnsModel(QObject *parent = 0): QObject(parent), modelObject(parent)
    {
    }

    ~TestSqlKanbanColumnsModel()
    {
    }

private:
    SqlKanbanColumnsModel modelObject;

private slots:
    void TestCase1_modelRowCount()
    {
        QCOMPARE(modelObject.rowCount(), 0);
    }

    void testCase2_createTable(){
        for(int row=0; row<modelObject.rowCount(); ++row){
            modelObject.removeRow(row);
        }
        modelObject.submitAll();
        QCOMPARE(modelObject.rowCount(), 0);

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
        query.exec("INSERT INTO KanbanColumns VALUES('userName', 'Kanban - daily to do', '2016-01-07T14:36:06', 'Hello!', 'Bug,#BC2E2A,Feature,#1F7E38,Important,#B6AA37', 'To Do')");
        query.exec("INSERT INTO KanbanColumns VALUES('userName', 'Kanban - monthly to do', '2015-11-20T06:30:02', 'God morgen. Har du fått mitt maleri?', 'Feature,#1F7E38,Important,#B6AA37', 'To Do')");
        query.exec("INSERT INTO KanbanColumns VALUES('userName', 'Kanban - weekly to do', '2016-01-01T11:24:53', 'Hi!', 'Bug,#BC2E2A,Feature,#1F7E38', 'In Progress')");
        query.exec("INSERT INTO KanbanColumns VALUES('userName', 'Kanban - weekly to do', '2016-01-07T14:36:16', 'Good morning.', 'Bug,#BC2E2A,Important,#B6AA37', 'To Do')");
        query.exec("INSERT INTO KanbanColumns VALUES('userName', 'Kanban - daily to do', '2016-01-07T14:36:16', 'Good afternoon.', 'Feature,#1F7E38,Important,#B6AA37', 'In Progress')");

        modelObject.submitAll();
        QCOMPARE(modelObject.rowCount(), 5);
    }

    void testCase2_removeEveryRowInTable(){
        QCOMPARE(modelObject.rowCount(), 5);
        for(int row=0; row<modelObject.rowCount(); ++row){
            modelObject.removeRow(row);
        }
        modelObject.submitAll();
        QCOMPARE(modelObject.rowCount(), 0);
    }
};
