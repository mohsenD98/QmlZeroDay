#include <QtTest/QTest>

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
};
