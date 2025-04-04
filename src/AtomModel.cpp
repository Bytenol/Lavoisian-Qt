#include <lvn-gui/AtomModel.h>


AtomModel::AtomModel(QObject *parent) : QAbstractListModel(parent) {
    loadAtoms();
}

void AtomModel::loadAtoms() {
    atoms = lvn::GetAtoms();
}

int AtomModel::rowCount(const QModelIndex &parent) const {
    if (parent.isValid()) return 0;
    return atoms.size();
}

QVariant AtomModel::data(const QModelIndex &index, int role) const {
    if (!index.isValid() || index.row() >= atoms.size()) return QVariant();

    const lvn::Atom &atom = atoms[index.row()];
    switch (role) {        
        case AtomicNumberRole: return atom.id;
        case SymbolRole: return QString::fromStdString(atom.symbol);
        case NameRole: return QString::fromStdString(atom.name);
        case LatinNameRole: return QString::fromStdString(atom.latin_name);
        case PronunciationRole: return QString::fromStdString(atom.pronunciation);
        case LatinPronunciationRole: return QString::fromStdString(atom.latin_pronunciation);
        case XposRole: return atom.xpos;
        case YposRole: return atom.ypos;
        case ColorRole: return QString::fromStdString(atom.cpk_hex);
        case AtomicMassRole: return atom.atomic_mass;
        // case XposRole: return atom.xpos;
        // case YposRole: return atom.ypos;
        // case GroupRole: return atom.group;
        // case PeriodRole: return atom.period;
        default: return QVariant();
    }
}

QHash<int, QByteArray> AtomModel::roleNames() const {
    return {
        {AtomicNumberRole, "id"},
        {SymbolRole, "symbol"},
        {NameRole, "name"},
        {AtomicMassRole, "atomic_mass"},
        {XposRole, "xpos"},
        {YposRole, "ypos"}
    };
}


void registerTypes() {
    qmlRegisterType<AtomModel>("Lavoisian", 1, 0, "AtomModel");
}

Q_COREAPP_STARTUP_FUNCTION(registerTypes)
