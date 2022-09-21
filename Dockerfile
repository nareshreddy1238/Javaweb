FROM tomcat:7
ADD ./target/*.war /usr/local/tomcat/webapps/
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]
