#!/bin/bash

# user
groupadd weblogic
useradd -g weblogic weblogic
passwd weblogic

su weblogic

# install
java -jar wls1036_generic.jar

# domain
cd /home/weblogic/Oracle/Middleware/wlserver_10.3/common/bin
./config.sh

# admin
cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain/servers/AdminServer
cp /home/weblogic/boot.properties ./

# start
cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain/bin
# ./startWeblogic.sh