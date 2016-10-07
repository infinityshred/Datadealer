#!/bin/bash

avrdude -B 100 -V -p m644p -c usbtiny -P usb -e -U lock:w:0x3F:m -e -u -U efuse:w:0xFD:m -U hfuse:w:0xD6:m -U lfuse:w:0xFF:m -U lock:w:0x0f:m
avrdude -B 1 -V -p m644p -c usbtiny -P usb -U flash:w:shruthi1_1.02.hex:i -U flash:w:muboot.hex:i -U lock:w:0x2f:m
