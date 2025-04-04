#ifndef ATOM_MODEL_H
#define ATOM_MODEL_H

#include <QtQml>
#include <QAbstractListModel>
#include <vector>
#include <lavoisian/Core.hpp>

class AtomModel : public QAbstractListModel {
    Q_OBJECT
public:
    enum AtomRoles {
        AtomicNumberRole = Qt::UserRole + 1,
        SymbolRole,
        NameRole,
        LatinNameRole,
        PronunciationRole,
        LatinPronunciationRole,
        XposRole,
        YposRole,
        WxposRole,
        WyposRole,
        ColorRole,
        AtomicMassRole,
    };

    explicit AtomModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    QHash<int, QByteArray> roleNames() const override;

private:
    std::vector<lvn::Atom> atoms;
    void loadAtoms();
};


#endif // ELEMENTMODEL_H
