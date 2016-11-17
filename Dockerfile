FROM tomcat:8.0
RUN apt-get update && apt-get install -y vim curl net-tools
COPY tomcat-users.xml /usr/local/tomcat/conf
ENV ENVIRONMENT="postgresql"
ENV SPRING_PROFILES_ACTIVE="master,prod"
ENV VCAP_SERVICES=""
COPY cdic.war /usr/local/tomcat/webapps
