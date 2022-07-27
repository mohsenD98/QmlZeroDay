#pragma once

#include <QSqlTableModel>

class SqlKanbanColumnsModel: public QSqlTableModel
{
    Q_OBJECT
    Q_PROPERTY(QString kanbanTableId READ kanbanTableId WRITE setKanbanTableId NOTIFY kanbanTableIdChanged)

public:
    SqlKanbanColumnsModel(QObject *parent = 0);

    QString kanbanTableId() const;
    void setKanbanTableId(const QString &kanbanTableId);

    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    Q_INVOKABLE void addCard(const QString &kanbanTableId, const QString &cardDesc, const QString &labels, const QString &colId);

signals:
    void kanbanTableIdChanged();

private:
    QString m_kanbanTableId;
};
