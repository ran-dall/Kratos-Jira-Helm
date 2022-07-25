# Atlassin Helm Chart

## Run
```shell
$ podman volume create --name jiraVolume
$ podman run -v jiraVolume:/var/atlassian/application-data/jira --name="jira" -d --network host atlassian/jira-software
```
