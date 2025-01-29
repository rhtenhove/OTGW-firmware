#!/usr/bin/env sh

set -e

docker run --rm -ti -v $PWD:/OTGW-firmware -w /OTGW-firmware otgwbuilder make

docker run --rm -ti --device /dev/ttyUSB0:/dev/ttyUSB0 -v $PWD:/OTGW-firmware -w /OTGW-firmware otgwbuilder esptool.py -p /dev/ttyUSB0 write_flash 0x0 ./build/esp8266.esp8266.d1_mini/OTGW-firmware.ino.bin
