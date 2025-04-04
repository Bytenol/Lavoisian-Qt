#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <iostream>
#include <string>
#include <filesystem>
#include <lavoisian/Core.hpp>

namespace fs = std::filesystem;


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    lvn::Init();
    auto a = lvn::GetAtomById(1);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("Lavoisian-Gui", "Main");

    return app.exec();
}
