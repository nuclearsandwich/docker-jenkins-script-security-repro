#!/bin/sh

java -jar /var/jenkins_home/war/WEB-INF/jenkins-cli.jar -s "http://admin:$(cat /var/jenkins_home/secrets/initialAdminPassword)@localhost:8080" create-job failing_job < /tmp/failing_job.xml
java -jar /var/jenkins_home/war/WEB-INF/jenkins-cli.jar -s "http://admin:$(cat /var/jenkins_home/secrets/initialAdminPassword)@localhost:8080" create-job passing_job < /tmp/passing_job.xml
