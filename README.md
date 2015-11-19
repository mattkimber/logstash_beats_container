# Logstash with updated Beats plugin

The official Logstash container ships with an outdated *beats* plugin, which causes the following error to occur when trying to ingest data:

```
"Beats input: unhandled exception", :exception=>#<TypeError: The field '@timestamp' must be a (LogStash::Timestamp, not a String (2015-11-19T11:58:10.424Z)>
```

This Dockerfile will update the included version of Beats to the latest (0.9.6 at the time of writing) which corrects the problem.

## Building

To build the image, run the following:

`docker build -t mattkimber/logstash_beats .`
