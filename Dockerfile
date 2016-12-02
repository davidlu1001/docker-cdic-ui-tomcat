FROM tomcat:8.0
RUN apt-get update && apt-get install -y vim curl net-tools telnet python python-pip
COPY tomcat-users.xml /usr/local/tomcat/conf
ENV JAVA_OPTS="-Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms1536m -Xmx4096m -XX:NewSize=256m -XX:MaxNewSize=256m -XX:PermSize=256m -XX:MaxPermSize=2048m -XX:+DisableExplicitGC"
ENV ENVIRONMENT="postgresql"
ENV SPRING_PROFILES_ACTIVE="master,prod"
COPY cdic.war /usr/local/tomcat/webapps
