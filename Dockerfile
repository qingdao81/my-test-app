FROM fabric8/java-alpine-openjdk8-jre

COPY target/my-test-app-1.0-SNAPSHOT.jar /tmp/my-test-app.jar
COPY target/classes/app.yml /tmp/app.yml
COPY start.sh /tmp/start.sh

RUN chmod a+x /tmp/start.sh

EXPOSE 14000
EXPOSE 14001

CMD ["/tmp/start.sh"]
