#include <QtTest>

#include "core/viewModel/conversation/SqlConversationModel.h"

class TestSqlConversationModel : public QObject
{
    Q_OBJECT

public:
    TestSqlConversationModel(QObject *parent = 0): QObject(parent), modelObject(parent)
    {

    }
    ~TestSqlConversationModel()
    {

    }

private:
    SqlConversationModel modelObject;

private slots:
    void testCase1_modelRowCount()
    {
        QCOMPARE(modelObject.rowCount(), 0);
    }
};
