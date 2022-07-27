#pragma once

#include <QSqlQueryModel>

class SqlKanbanTableModel: public QSqlQueryModel
{
public:
    SqlKanbanTableModel(QObject *parent = 0);

    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

};

