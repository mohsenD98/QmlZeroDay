#pragma once

#include <QSqlTableModel>

class SqlContactModel : public QSqlTableModel
{
    Q_OBJECT
public:
    SqlContactModel(QObject *parent = 0);

    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    Q_INVOKABLE void addContact(const QString &name);
};

