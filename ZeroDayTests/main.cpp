#include "Test1.h"
#include "Test2.h"
#include <QtTest>
#include <QDebug>

int main(int argc, char** argv){

    int failedTests = 0;
    Test1 tst_mtest1;
    Test2 tst_mtest2;
    failedTests += QTest::qExec(&tst_mtest1, argc, argv);
    failedTests += QTest::qExec(&tst_mtest2, argc, argv);


    if(failedTests > 0){
        qDebug() << "total number of failed tests: " << failedTests;
    }else{
        qDebug() << "all tests passed :)";
    }
    return failedTests;
}

