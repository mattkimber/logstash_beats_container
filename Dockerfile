FROM logstash
RUN yes | /opt/logstash/bin/plugin update logstash-input-beats

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["logstash", "agent"]
