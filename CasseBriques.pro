# configuration Qt
QT       += core gui opengl widgets
TEMPLATE  = app

# ajout des libs au linker
win32 {
    win32-msvc* {
        LIBS     += opengl32.lib glu32.lib
    } else {
        LIBS     += -lopengl32 -lglu32
    }
}
else {
	LIBS     += -lGL -lGLU
}

# nom de l'exe genere
TARGET 	  = CasseBriques

# fichiers sources/headers
SOURCES	+= main.cpp myglwidget.cpp \
    mainwindow.cpp \
    ball.cpp \
    puck.cpp \
    object.cpp \
    brick.cpp \
    wall.cpp \
    startgame.cpp
    wall.cpp
HEADERS += myglwidget.h \
    mainwindow.h \
    ball.h \
    puck.h \
    object.h \
    brick.h \
    wall.h \
    startgame.h
    wall.h

FORMS += \
    mainwindow.ui \
    startgame.ui

INCLUDEPATH +=$$(OPENCV_DIR)\..\..\include

LIBS += -L$$(OPENCV_DIR)\lib \
    -lopencv_core2413 \
    -lopencv_highgui2413 \
    -lopencv_imgproc2413 \
    -lopencv_video2413 \
    -lopencv_features2d2413 \
    -lopencv_calib3d2413

RESOURCES += \
    ressources.qrc
