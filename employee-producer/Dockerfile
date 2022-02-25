FROM tomcat:8.0.51-jre8-alpine AS build
COPY target/employee-producer-0.0.1-SNAPSHOT.war /usr/local/
WORKDIR /usr/local/
RUN unzip employee-producer-0.0.1-SNAPSHOT.war
CMD ["java", "-classpath", "/usr/local/WEB-INF/lib/*:/usr/local/WEB-INF/classes/", "com.javainuse.SpringBootHelloWorldApplication"]
EXPOSE 8181/tcp


FROM mysql:5.7

VOLUME /var/lib/mysql

COPY docker_entrypoint.sh /usr/local/bin/
RUN ln -s usr/local/bin/docker_entrypoint.sh entrypoint.sh # backwards compat
ENTRYPOINT ["docker_entrypoint.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]