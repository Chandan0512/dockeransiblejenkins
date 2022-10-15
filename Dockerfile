FROM openjdk:8-alpine
 	 
 	# Required for starting application up.
 	RUN apk update && apk add /bin/sh
 	 
 	RUN mkdir -p /opt/app
 	ENV PROJECT_HOME /opt/app
 	 
 	COPY target/dockeransible.war $PROJECT_HOME/dockeransible.war
 	 
 	WORKDIR $PROJECT_HOME
 	EXPOSE 8008
 	CMD ["java" ,"-jar","./dockeransible.war"]
