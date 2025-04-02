cmake_minimum_required(VERSION 3.16)

project(Lavoisian-Gui VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appLavoisian-Gui
    main.cpp
)

qt_add_qml_module(appLavoisian-Gui
    URI Lavoisian-Gui
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES
        QML_FILES
        QML_FILES
        RESOURCES .gitignore
        RESOURCES .gitignore
        RESOURCES .gitignore
        QML_FILES qmls/pages/PeriodicTable.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appLavoisian-Gui PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appLavoisian-Gui
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appLavoisian-Gui
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appLavoisian-Gui
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
