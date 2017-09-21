Linux application(dcdc-usb) and library (libdcdc-usb) for controlling and listing the 
parameters of mini-box.com DCDC-USB product (http://www.mini-box.com/DCDC-USB)

Pre-built and tested releases: https://github.com/Synergyst/dcdc-usb/releases

Compiling and Installing:

Make sure you have libusb and libusb development packages installed.

Please ensure that you run the following if you do not see your platform in the releases page: git clone https://github.com/Synergyst/dcdc-usb && cd dcdc-usb && ./build-and-install.sh

It will install by default in /usr/local/


Usage:

dcdc-usb -h will display the help options for the utility.

dcdc-usb with no parameters will display the current output voltage.

dcdc-usb -a will display all settings from the device.

dcdc-usb -v 20.50 will set the output voltage to 20.5V.
