#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSurfaceFormat>
#include <QLocale>
#include <QTranslator>

#include "core/viewModel/board/SqlKanbanColumnsModel.h"
#include "core/viewModel/board/SqlKanbanTableModel.h"
#include "core/viewModel/conversation/SqlContactModel.h"
#include "core/viewModel/conversation/SqlConversationModel.h"

#include "core/dataBase/DataBaseContext.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    // enable antialiasing on QML Shapes
    QSurfaceFormat format;
    format.setSamples(8);
    QSurfaceFormat::setDefaultFormat(format);

    qmlRegisterType<SqlKanbanTableModel>("MGram.sql.Kanban", 1, 0, "SqlKanbanTableModel");
    qmlRegisterType<SqlKanbanColumnsModel>("MGram.sql.Kanban", 1, 0, "SqlKanbanColumnsModel");

    qmlRegisterType<SqlContactModel>("MGram.sql.conversation", 1, 0, "SqlContactModel");
    qmlRegisterType<SqlConversationModel>("MGram.sql.conversation", 1, 0, "SqlConversationModel");

    DataBaseContext::connectToDatabase();

    // We register the qml file by specifying its path.
    qmlRegisterSingletonType(QUrl("qrc:/style/Style.qml"), "Style", 1, 0, "Style");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
