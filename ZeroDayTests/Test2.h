#include <QtTest>

class Test2 : public QObject
{
    Q_OBJECT

public:
    Test2()
    {

    }
    ~Test2()
    {

    }

private slots:
    void test_case2()
    {
        QCOMPARE(QString("hello").toUpper(), "HELLO");
    }

};
