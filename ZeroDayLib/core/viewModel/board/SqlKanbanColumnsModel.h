#pragma once

#include <QSqlTableModel>

class SqlKanbanColumnsModel: public QSqlTableModel
{
    Q_OBJECT
    Q_PROPERTY(QString kanbanTableId READ kanbanTableId WRITE setKanbanTableId NOTIFY kanbanTableIdChanged)
    Q_PROPERTY(QString colId READ colId WRITE setColId NOTIFY colIdChanged)

public:
    SqlKanbanColumnsModel(QObject *parent = 0);
    ~SqlKanbanColumnsModel(){};

    QString kanbanTableId() const;
    void setKanbanTableId(const QString &kanbanTableId);

    QString colId() const;
    void setColId(const QString &colId);


    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    Q_INVOKABLE void addCard(const QString &kanbanTableId, const QString &cardDesc, const QString &labels, const QString &colId);
    Q_INVOKABLE void editCard(const int &row, const QString &cardDesc, const QString &labels);
    Q_INVOKABLE void removeCard(int row);
    Q_INVOKABLE void deleteCardsInTable();

    Q_INVOKABLE void addCardAndRemove(int row, const QString &kanbanTableId, const QString &cardDesc, const QString &labels, const QString &colId);
    Q_INVOKABLE void setFilterToBoard(const QString &text);
signals:
    void kanbanTableIdChanged();
    void colIdChanged();

private slots:
    void setupFilters();

private:
    QString m_kanbanTableId;
    QString m_colId;
};
