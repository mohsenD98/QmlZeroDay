#include <QtTest/QTest>

#include "viewModel/board/SqlKanbanColumnsModel.h"

class Test1 : public QObject
{
    Q_OBJECT

public:
    Test1(QObject *parent = 0): QObject(parent)
    {
        X x;
        qDebug() << x.xx();

        SqlKanbanColumnsModel xxx;
    }
    ~Test1()
    {
    }

private slots:
    void Test1_case1()
    {
        qDebug() << "test1";
    }
    void Test1_case2()
    {
        qDebug() << "test2";
    }
    void Test1_case3()
    {
        qDebug() << "test3";
    }
};
