#!/bin/bash

hash checkinstall 2>/dev/null || { echo >&2 "checkinstall is required, however checkinstall is not installed.. Aborting."; exit 1; }

hash dcdc-usb
if [[ $? -ne 0 ]]; then
  checkinstall --maintainer='https://github.com/Synergyst' --pkgversion=1.0 --pkgname=dcdc-usb-utils --pkgrelease=1 --provides=dcdc-usb --conflicts=dcdc-usb --pkgname=dcdc-usb-utils --nodoc
  exit $?
else
  echo "dcdc-usb is already installed.. You can skip the uninstall steps below if you're comfortable."
  read -p 'Do you want to attempt to uninstall ALL previous dcdc-usb components then continue? (y/N): ' yN
  if [[ "$yN" == "y" ]]; then
    echo "Attempting uninstall methods.."
    echo
    echo "Attmpting to uninstall via dpkg.."
    dpkg -r dcdc-usb-utils
    echo
    echo "Attempting rm method.."
    rm /usr/local/bin/dcdc-usb
    rm /usr/local/lib/libdcdc-usb.so
    echo
    echo "Done running common methods; if the error persists please create an issue ticket on Github."
    echo
    echo "Running checkinstall.."
    checkinstall --maintainer='https://github.com/Synergyst' --pkgversion=1.0 --pkgname=dcdc-usb-utils --pkgrelease=1 --provides=dcdc-usb --conflicts=dcdc-usb --pkgname=dcdc-usb-utils --nodoc
    exit $?
  else
    echo "Running checkinstall.."
    checkinstall --maintainer='https://github.com/Synergyst' --pkgversion=1.0 --pkgname=dcdc-usb-utils --pkgrelease=1 --provides=dcdc-usb --conflicts=dcdc-usb --pkgname=dcdc-usb-utils --nodoc
    exit $?
  fi
fi
