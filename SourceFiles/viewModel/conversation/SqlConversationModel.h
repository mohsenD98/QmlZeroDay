#pragma once

#include <QSqlTableModel>

enum MessageType{
    KEY_DATE,
    KEY_MESSAGE,
    KEY_MESSAGE_WITH_PHOTO,
    KEY_MESSAGE_WITH_AUDIO,
    KEY_MESSAGE_WITH_VIDEO,
};

class SqlConversationModel : public QSqlTableModel
{
    Q_OBJECT
    Q_PROPERTY(QString recipient READ recipient WRITE setRecipient NOTIFY recipientChanged)

public:
    SqlConversationModel(QObject *parent = 0);

    QString recipient() const;
    void setRecipient(const QString &recipient);

    QVariant data(const QModelIndex &index, int role) const override;
    QHash<int, QByteArray> roleNames() const override;

    Q_INVOKABLE void sendMessage(const QString &recipient, const QString &message, const int &type);
    Q_INVOKABLE void deleteAllMessages();
    Q_INVOKABLE void deleteMsg(const QVector<int> &rows);

signals:
    void recipientChanged();

private:
    QString m_recipient;
};

