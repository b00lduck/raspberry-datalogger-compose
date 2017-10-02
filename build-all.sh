#!/bin/bash

set -e

OPWD=$(pwd)

cd $OPWD/../rpi-golang-1.7
docker build -t rem/rpi-golang-1.7:latest .

#cd $OPWD/../rpi-influxdb
#docker build -t rem/rpi-influxdb:latest .

#cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-dataservice-server
#./build-docker.sh

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-acquisition
./build-docker.sh 

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-display
./build-docker.sh 

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-temperature
./build-docker.sh

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-vcontrol
./build-docker.sh

cd $OPWD/../vcontrold-docker
docker build -t rem/vcontrold:latest .

cd $OPWD
