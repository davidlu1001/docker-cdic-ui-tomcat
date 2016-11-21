FROM tomcat:8.0
RUN apt-get update && apt-get install -y vim curl net-tools telnet python python-pip
COPY tomcat-users.xml /usr/local/tomcat/conf
ENV ENVIRONMENT="postgresql"
ENV SPRING_PROFILES_ACTIVE="master,prod"
COPY cdic.war /usr/local/tomcat/webapps
