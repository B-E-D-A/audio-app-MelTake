TARGET = audio_app

TAGLIB_LIB_PATH = ""
TAGLIB_INCLUDE_PATH = ""
FFTW_LIB_PATH = ""
FFTW_INCLUDE_PATH = ""

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets multimedia

CONFIG += c++17 console debug

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    src/audio_decoder.cpp \
    src/spectrum_analyzer.cpp \
    src/audio_visualizer.cpp

INCLUDEPATH += include

HEADERS += \
    mainwindow.h \
    include/audio_decoder.hpp \
    include/spectrum_analyzer.hpp \
    include/audio_visualizer.hpp
    
FORMS += \
    mainwindow.ui

RESOURCES += \
    resources.qrc
    
win32: RC_ICONS += resources/ghost_icon.ico

# Link taglib
LIBS += -L$${TAGLIB_LIB_PATH} -ltag
INCLUDEPATH += $${TAGLIB_INCLUDE_PATH}

# Link FFTW3
LIBS += -L$${FFTW_LIB_PATH} -lfftw3-3  # using the "Direct linking", mingw feature
INCLUDEPATH += $${FFTW_INCLUDE_PATH}
