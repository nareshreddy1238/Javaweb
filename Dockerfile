FROM centos:7
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
RUN curl -O https://archive.apache.org/dist/tomcat/tomcat-7/v7.0.94/bin/apache-tomcat-7.0.94.tar.gz
RUN tar -xvfz apache*.tar.gz
RUN mv apache-tomcat-7.0.94/* /opt/tomcat/.
RUN yum -y install java-11*
WORKDIR /opt/tomcat/apache-tomcat-1.0.94/webapps
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
