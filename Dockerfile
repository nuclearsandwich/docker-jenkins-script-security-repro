FROM jenkins/jenkins

RUN /usr/local/bin/install-plugins.sh groovy script-security

ADD scriptApproval.xml /var/jenkins_home/scriptApproval.xml

ADD failing_job.xml /tmp/failing_job.xml
ADD passing_job.xml /tmp/passing_job.xml

ADD add_jobs.sh /tmp/add_jobs.sh

