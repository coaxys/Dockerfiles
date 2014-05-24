#!/bin/bash

DIR='/deploy'

if [ ! -f /opt/setupdone ]
then
    PASS=$(pwgen -s 12 1)
    sed -i -e"s/CHANGE_IT/$PASS/" $CATALINA_HOME/conf/tomcat-users.xml
    echo "=> Setup Done!"
    echo "========================================================================"
    echo "You can now manage your Tomcat 7 Server using:"
    echo ""
    echo "    http://IP_ADDRESS:PORT/manager/html"
    echo "    user: admin"
    echo "    password: $PASS"
    echo ""
    echo "========================================================================"
fi

echo "=> Checking *.war in $DIR"
if [ -d $DIR ]; then
  echo "========================================================================"
  for i in $DIR/*.war; do
     file=$(basename $i)
     echo "Linking $i --> $CATALINA_HOME/webapps/$file"
     ln -s $i $CATALINA_HOME/webapps/$file
  done
  echo "========================================================================"
fi

$CATALINA_HOME/bin/catalina.sh run