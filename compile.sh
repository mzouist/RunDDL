#!/bin/bash

#STEP 1
cd /Users/mzou/Documents/UHM/derby/Apache
export DERBY_INSTALL=/Users/mzou/Documents/UHM/derby/Apache/db-derby-10.13.1.1-bin
export CLASSPATH=$DERBY_INSTALL/lib/derby.jar:$DERBY_INSTALL/lib/derbytools.jar:$DERBY_INSTALL/lib/derbynet.jar:$DERBY_INSTALL/lib/derbyclient.jar:.
export DERBY_HOME=/Users/mzou/Documents/UHM/derby/Apache
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home/

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

