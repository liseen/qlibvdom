TEMPLATE=lib
VERSION = 1.0.0
SOURCES += vdom.cpp
HEADERS += vdom.h

CONFIG += release
QT -= gui core

INSTALLDIR=/opt/qcontent/3rdparty/

headers.files = $$HEADERS
headers.path = $$INSTALLDIR/include

target.path  = $$INSTALLDIR/lib

INSTALLS += headers target

