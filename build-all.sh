#!/bin/bash

set -e

OPWD=$(pwd)

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-dataservice-server
./build-docker.sh

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-serial
./build-docker.sh 

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-acquisition
./build-docker.sh 

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-display
./build-docker.sh 

cd $OPWD/../gopath/src/github.com/b00lduck/raspberry-datalogger-temperature
./build-docker.sh

cd $OPWD