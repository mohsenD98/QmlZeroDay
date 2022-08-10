#include <QtTest>

#include "core/viewModel/board/SqlKanbanTableModel.h"

class TestSqlKanbanTableModel : public QObject
{
    Q_OBJECT

public:
    TestSqlKanbanTableModel(QObject *parent = 0): QObject(parent), modelObject(parent)
    {

    }
    ~TestSqlKanbanTableModel()
    {

    }

private:
    SqlKanbanTableModel modelObject;

private slots:
    void testCase1_modelRowCount()
    {
        QCOMPARE(modelObject.rowCount(), 0);
    }
};
