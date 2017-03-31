#!/bin/bash

# Exec sudo to avoid later prompt
sudo echo "Start building containers"

##############
# First level containers
##############

echo -ne '\tBuild ubuntu (1)'
cd ubuntu > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

echo -ne '\tBuild haproxy (1)'
cd haproxy > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

##############
# Second level containers
##############

echo -ne '\tBuild oracle-jdk-8 (2)'
cd oracle-jdk-8 > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

echo -ne '\tBuild nginx (2)'
cd nginx > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

echo -ne '\tBuild mongodb (2)'
cd mongodb/3.2 > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

##############
# Third level containers
##############

echo -ne '\tBuild elasticsearch (3)'
cd elasticsearch > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

echo -ne '\tBuid tomcat-8 (3)'
cd tomcat-8 > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

echo -ne '\tBuild play1.4.4 (3)'
cd play1/1.4.4 > /dev/null && ./build.sh > /dev/null
cd - > /dev/null
echo -e '\r[ok]'

echo 'All build done'
