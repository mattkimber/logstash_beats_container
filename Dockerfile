FROM logstash:2.0.0-1
RUN yes | /opt/logstash/bin/plugin update logstash-input-beats

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["logstash", "agent"]
