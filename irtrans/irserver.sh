#!/bin/bash

cd `rospack find ir_trans_drivers`/irtrans/irserver/

MACHINE_TYPE=`uname -m`
if [ ${MACHINE_TYPE} == "x86_64" ]; then
    EXE=./irserver64
else
    EXE=./irserver
fi

${EXE} /dev/ttyUSBir
