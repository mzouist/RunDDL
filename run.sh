#!/bin/bash

javac -cp ./derbyclient.jar: ./ClusterInfo.java  DerbyTest.java
java -cp .:derbyclient.jar DerbyTest $1 $2
#java -cp .:derbyclient.jar DerbyTest ./clustercfg.cfg ./ddlfile.sql