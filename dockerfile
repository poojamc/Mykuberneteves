FROM ubuntu:20.04
RUN apt update
RUN apt install vim -y
RUN apt install default-jdk -y
WORKDIR /opt
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.91/bin/apache-tomcat-8.5.91.tar.gz .
RUN apt install tar -y
RUN tar -xvzf apache-tomcat-8.5.91.tar.gz
EXPOSE 8082
COPY hello-world-war/target/hello-world-war.1.0.0.war /opt/apache-tomcat-8.5.91/webapps
CMD ["/opt/apache-tomcat-8.5.91/bin/catalina.sh", "run"] 
