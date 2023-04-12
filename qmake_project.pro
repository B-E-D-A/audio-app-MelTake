QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets multimedia

CONFIG += c++17 console debug

SOURCES += \
    main.cpp \
    mainwindow.cpp \
    src/playlist_functions.cpp \
    src/settings_functions.cpp \
    src/AudioVisualizer.cpp

HEADERS += \
    mainwindow.h \
    include/fwd.hpp \
    include/playlist_structure.hpp \
    include/settings_structure.hpp \
    include/track_structure.hpp \
    include/AudioVisualizer.hpp

FORMS += \
    mainwindow.ui

RESOURCES += \
    resources.qrc

qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# напиши свой путь к taglib
win32: LIBS += -LD:\tools\cpp-libs\taglib\lib -ltag

INCLUDEPATH += D:\tools\cpp-libs\taglib\include
DEPENDPATH += D:\tools\cpp-libs\taglib\include

# Link FFTW3
INCLUDEPATH += D:/tools/cpp-libs/fftw/include
LIBS += -LD:/tools/cpp-libs/fftw/bin -lfftw3-3  # using the "Direct linking", mingw feature
