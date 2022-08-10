#include <QtTest>
#include <QDebug>

#include "TestSqlKanbanColumnsModel.h"
#include "TestSqlKanbanTableModel.h"
#include "TestSqlContactModel.h"
#include "TestSqlConversationModel.h"

#include "core/dataBase/DataBaseContext.h"

int main(int argc, char** argv)
{
    DataBaseContext::connectToDatabase();

    int failedTests = 0;

    TestSqlKanbanColumnsModel tst_sqlKanbanColumnsModel;
    TestSqlKanbanTableModel tst_sqlKanbanTableModel;
    TestSqlContactModel tst_sqlContactModel;
    TestSqlConversationModel tst_sqlConversationModel;

    failedTests += QTest::qExec(&tst_sqlKanbanColumnsModel, argc, argv);
    failedTests += QTest::qExec(&tst_sqlKanbanTableModel, argc, argv);
    failedTests += QTest::qExec(&tst_sqlContactModel, argc, argv);
    failedTests += QTest::qExec(&tst_sqlConversationModel, argc, argv);

    if(failedTests > 0){
        qDebug() << "total number of failed tests: " << failedTests;
    }else{
        qDebug() << "all tests passed :)";
    }
    return failedTests;
}

