#pragma once

#include <QSqlTableModel>

class SqlKanbanTableModel: public QSqlTableModel
{
    Q_OBJECT
public:
    SqlKanbanTableModel(QObject *parent=0);

    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

     Q_INVOKABLE void addTabel(const QString &name, const QString &columns, const QString &labels);
     Q_INVOKABLE void removeTable(int row);
     Q_INVOKABLE void updateTableName(const int &row, const QString &name);
     Q_INVOKABLE void addTableColor(const int &row, const QString &newVal);
};

