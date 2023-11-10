cmake_minimum_required(VERSION 3.16)

project(SnippetSaver VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick QuickControls2)

qt_standard_project_setup()

qt_add_executable(appSnippetSaver
    main.cpp
)

qt_add_qml_module(appSnippetSaver
    URI SnippetSaver
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES Resource.qrc
    QML_FILES ViewComponents/MainPage/LeftSidePane.qml ViewComponents/MainPage/MiddlePane.qml ViewComponents/MainPage/PrefsToolbar.qml ViewComponents/MainPage/RightSidePane.qml ViewComponents/MainPage/SettingsPage.qml
    QML_FILES Utils/UI_Services/GlobalActions.qml Utils/UI_Services/PrefsSpace.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appSnippetSaver PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appSnippetSaver
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appSnippetSaver
    PRIVATE Qt6::Quick Qt6::QuickControls2
)

set_target_properties(appSnippetSaver PROPERTIES
    AUTORCC ON
)

include(GNUInstallDirs)
install(TARGETS appSnippetSaver
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
