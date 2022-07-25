FROM atlassian/jira-software:8.22-ubuntu-jdk11

COPY mysql-connector-java-8.0.29.jar /opt/atlassian/jira/lib/.

# Delete .lock before launching JIRA again (USING SED)
RUN sed --in-place '1 a rm -f /var/atlassian/application-data/jira/.jira-home.lock' /opt/atlassian/jira/bin/start-jira.sh
