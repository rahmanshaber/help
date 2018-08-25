#-------------------------------------------------
#
# Project created by QtCreator 2018-08-20T09:12:54
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = help
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

CONFIG += c++11

# library for theme
unix:!macx: LIBS += /usr/lib/libcprime.a

SOURCES += \
    main.cpp \
    help.cpp

HEADERS += \
    help.h

FORMS += \
    help.ui

RESOURCES += \
    icons.qrc

# Disable warnings and enable threading support
CONFIG += thread silent build_all

# Disable Debug on Release
# CONFIG(release):DEFINES += QT_NO_DEBUG_OUTPUT

# Build location

BUILD_PREFIX = $$(CA_BUILD_DIR)

isEmpty( BUILD_PREFIX ) {
        BUILD_PREFIX = ./build
}

MOC_DIR       = $$BUILD_PREFIX/moc-qt5
OBJECTS_DIR   = $$BUILD_PREFIX/obj-qt5
RCC_DIR	      = $$BUILD_PREFIX/qrc-qt5
UI_DIR        = $$BUILD_PREFIX/uic-qt5


unix {
        isEmpty(PREFIX) {
                PREFIX = /usr
        }
        BINDIR = $$PREFIX/bin

        target.path = $$BINDIR

        desktop.path = $$PREFIX/share/applications/
        desktop.files = "Help CoreApps.desktop"

        icons.path = $$PREFIX/share/icons/CoreApps/
        icons.files = icons/Help.svg

        INSTALLS += target icons desktop
}

DEFINES += "HAVE_POSIX_OPENPT"

