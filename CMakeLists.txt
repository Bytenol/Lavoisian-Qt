cmake_minimum_required(VERSION 3.16)

project(Lavoisian-Gui VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

include_directories("C:/Extract/C++/vcpkg/installed/x64-windows/include")

include_directories(include)

add_subdirectory(deps/Lavoisian)

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
        QML_FILES
        QML_FILES qmls/components/MainFooter.qml
        QML_FILES qmls/pages/Home/PeriodicTable.qml
        QML_FILES qmls/pages/Home/PeriodicTableSearch.qml
        QML_FILES qmls/pages/Home/HomeLayout.qml
        QML_FILES qmls/components/IconButtonText.qml
        QML_FILES qmls/pages/Home/Tables.qml
        QML_FILES qmls/pages/Home/User.qml
        QML_FILES qmls/pages/Home/Laws.qml
        RESOURCES Todos
        RESOURCES resources/drawables/account_circle_24dp.svg resources/drawables/alt_route_24dp.svg resources/drawables/arrow_drop_down_24dp.svg resources/drawables/description_24dp.svg resources/drawables/filter_alt_24dp.svg resources/drawables/home_24dp.svg resources/drawables/search_24dp.svg resources/drawables/table_24dp.svg resources/drawables/table_view_24dp.svg
        SOURCES src/AtomModel.cpp
        SOURCES include/lvn-gui/AtomModel.h
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
    PRIVATE Qt6::Quick lavoisian
)

include(GNUInstallDirs)
install(TARGETS appLavoisian-Gui
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
