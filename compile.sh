#!/bin/bash

read -p "Enter Path to Derby Apache directory: "  ApachePath
read -p "Enter Path to Java Home directory: "  JavaHome
#STEP 1
#/Users/mzou/Documents/UHM/derby/Apache
cd $ApachePath
export DERBY_INSTALL=$ApachePath/db-derby-10.13.1.1-bin
export CLASSPATH=$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:$DERBY_INSTALL/lib/derbynet.jar:$DERBY_INSTALL/lib/derbyclient.jar:.
export DERBY_HOME=$ApachePath
export JAVA_HOME=$JavaHome
#/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/

cd $DERBY_INSTALL/bin

#Embedded Derby Mode
#. setEmbeddedCP

#Network Server Mode
. setNetworkServerCP
. startNetworkServer 

#Client Mode
#. setNetworkClientCP
#java org.apache.derby.tools.ij


#Display list of info 
#java org.apache.derby.tools.sysinfo

