/**
 * @file Core.h
 * @date 19th Mar, 2025
 * 
 * 
 * The first alphabet after lvn_ should be in UPPERCASE per convention
 * 
 * Private functions are expected to be used by the developer's only and they
 * have been made to start with a _ preceeding the name. such as _makeAtom()
 */
#ifndef __BYTENOL_LAVOISIAN_H__
#define __BYTENOL_LAVOISIAN_H__

#include <string>
#include <vector>
#include <algorithm>
#include <iostream>
#include <filesystem>
#include <stdexcept>
#include <fstream>

#include <nlohmann/json.hpp>

#include "sqlite3.h"

namespace lvn
{

    using json = nlohmann::json;

    struct Atom;
    struct PhysicalProperties;
    struct ChemicalProperties;

    extern std::vector<Atom> _atoms;

    struct DatabaseError: std::logic_error {
        explicit DatabaseError(const std::string& msg): std::logic_error(msg){}
    };

    struct PhysicalProperties
    {
        int id;
        double boil;
        double melt;
        double molar_heat;
        std::string phase;
        std::string electrical_conductivity;
        std::string electrical_type;
        std::string magnetic_type;
        std::string volume_magnetic_susceptibility;
        std::string molar_magnetic_susceptibility;
        std::string resistivity;
        std::string super_conducting_point;
    };


    struct ChemicalProperties
    {
        int id;
        std::string shells;
        std::string electron_configuration;
        std::string electron_configuration_semantic;
        std::string ionization_energies;
        double electron_affinity;
        double electronegativity_pauling;
        std::string grid_parameters;
        std::string attitude;
        std::string crystallographic_space_group;
        std::string thermal_conductivity;
        std::string oxidation_state;
        std::string atomic_radius;
        double covalent_radius;
        int is_radioactive;
    };


    struct Atom
    {
        int id;
        std::string symbol;
        std::string name;
        std::string latin_name;
        std::string pronunciation;
        std::string latin_pronunciation;
        std::string appearance;
        double atomic_mass;
        std::string category;
        std::string period;
        std::string group;
        int xpos;
        int wxpos;
        int ypos;
        int wypos;
        std::string cpk_hex;
        std::string block;
    };

    void Init();

    Atom GetAtomById(const int& id);
    Atom GetAtomBySymbol(const std::string& symbol);

    template<typename T>
    Atom _GetAtom(const T& prop, T(*cb)(const Atom& atom));

    std::vector<Atom>& GetAtoms();

    const std::string _GetResourceDir();

}


#endif 