# Logstash with updated Beats plugin

The official Logstash container ships with an outdated *logstash-input-beats* plugin, which causes the following error to occur when trying to ingest data:

```
"Beats input: unhandled exception", :exception=>#<TypeError: The field '@timestamp' must be a (LogStash::Timestamp, not a String (2015-11-19T11:58:10.424Z)>
```

This Dockerfile will update the included version of the Beats input plugin to the latest (0.9.6 at the time of writing) which corrects the problem.

## Building

To build the image, run the following:

`docker build -t mattkimber/logstash_beats .`

## Using

You can either build your own container using these files, or pull `mattkimber/logstash_beats:2.0.0-1` from the Docker Hub: https://hub.docker.com/r/mattkimber/logstash_beats/
