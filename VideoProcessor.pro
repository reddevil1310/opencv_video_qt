QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = VideoProcessor
TEMPLATE = app

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += \
        main.cpp \
        mainwindow.cpp

HEADERS += \
        mainwindow.h

FORMS += \
        mainwindow.ui


win32:CONFIG(release, debug|release): LIBS += -LG:/OpenCv/opencv_4.1.0/build/x64/vc15/lib/ -lopencv_world410
else:win32:CONFIG(debug, debug|release): LIBS += -LG:/OpenCv/opencv_4.1.0/build/x64/vc15/lib/ -lopencv_world410d
else:unix: LIBS += -LG:/OpenCv/opencv_4.1.0/build/x64/vc15/lib/ -lopencv_world410

INCLUDEPATH += G:/OpenCv/opencv_4.1.0/build/include
DEPENDPATH += G:/OpenCv/opencv_4.1.0/build/include
