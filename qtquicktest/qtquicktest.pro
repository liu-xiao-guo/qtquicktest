TEMPLATE = app
TARGET = qtquicktest

load(ubuntu-click)

QT += qml quick

SOURCES += main.cpp

RESOURCES += qtquicktest.qrc

OTHER_FILES += qtquicktest.apparmor \
               qtquicktest.desktop \
               qtquicktest.png

#specify where the config files are installed to
config_files.path = /qtquicktest
config_files.files += $${OTHER_FILES}
message($$config_files.files)
INSTALLS+=config_files

# Default rules for deployment.
target.path = $${UBUNTU_CLICK_BINARY_PATH}
INSTALLS+=target

