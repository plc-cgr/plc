#!/bin/sh

tomcat_startup_dir=`dirname $0`

# This line commented out.  You should have Oracle JDK 1.6 installed.  If apache startup fails with JAVA_HOME
# not defined, uncomment and point to the correct place.
# export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk
export PATH=$PATH:$JAVA_HOME/bin
export CATALINA_HOME=${tomcat_startup_dir}/..
export BASEDIR=${tomcat_startup_dir}/..

export JAVA_OPTS="-Djava.security.auth.login.config==${BASEDIR}/conf/login.config -Xms256m -Xmx768m -XX:MaxPermSize=384m -Xdebug -Xrunjdwp:transport=dt_socket,address=8790,server=y,suspend=n"
#export JAVA_OPTS="-Djava.security.auth.login.config==${BASEDIR}/conf/login.config -Xdebug -Xrunjdwp:transport=dt_socket,address=8790,server=y,suspend=n"
#export JAVA_OPTS="-Djava.security.auth.login.config==${BASEDIR}/conf/login.config"
${tomcat_startup_dir}/catalina.sh $*
