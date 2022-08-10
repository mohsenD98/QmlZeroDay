#include <QtTest>

#include "core/viewModel/conversation/SqlContactModel.h"

class TestSqlContactModel : public QObject
{
    Q_OBJECT

public:
    TestSqlContactModel(QObject *parent = 0): QObject(parent), modelObject(parent)
    {

    }
    ~TestSqlContactModel()
    {

    }

private:
    SqlContactModel modelObject;

private slots:
    void testCase1_modelRowCount()
    {
        QCOMPARE(modelObject.rowCount(), 3);
    }
};
