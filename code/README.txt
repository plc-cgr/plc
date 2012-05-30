Quick Start.

1. Download and install Apache Tomcat 7.0.x. (http://tomcat.apache.org/download-70.cgi)
2. Download and install Postgresql 8.x.x. (http://www.postgresql.org/download/)
3. Modify the settings.xml file to point to your temporary download and tomcat installation location.
4. Place misc/login.config in TOMCAT_DIR/conf.
5. Place misc/startup-with-env.sh in TOMCAT_DIR/bin.
6. From the command line, run: mvn -s settings.xml clean install cargo:deploy
7. Start Tomcat by running TOMCAT_HOME/bin/startup-with-env.sh run
8. Visit http://localhost:8080/legalconsent to ensure the application properly deployed.