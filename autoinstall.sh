#!/bin/bash

diehard () {
  echo "${1}"
  exit 1,
}

if [ "${1}" = "install" -o "${1}" = "run" ]; then

  meson build || diehard "install: meson failed"
  cd build
  ninja || diehard "install: ninja failed"
  sudo ninja install || diehard "install: app installation failed"

  if [ "${1}" = "run" ]; then
    com.github.aggalex.ow-author
  fi

elif [ "${1}" = "uninstall" ]; then

  cd build
  sudo ninja uninstall || diehard "uninstall: app uninstallation failed"

elif [ "${1}" = "clear" ]; then

  rm -rf build
  mkdir build

else

  if [ "${1}" != "help" -a "${1}" != "" ]; then
    echo "Cannot understand command \"${1}\" Please use one of the following to install/uninstall your app."
  fi

  echo "install    | build and install application"
  echo "run        | build, install and run application"
  echo "uninstall  | uninstall application"
  echo "clear      | clear build directory"

fi
