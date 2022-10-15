FROM httpd
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/httpd/webapps/dockeransible.war
