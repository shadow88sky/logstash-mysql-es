FROM shadow88sky/logstash-mysql-es:v1.0
COPY ./mysql.conf  /usr/share/logstash/pipeline
COPY ./mysql.sql /usr/share/logstash/bin
COPY ./event.sql /usr/share/logstash/bin
CMD ["/usr/share/logstash/bin/logstash","--path.settings","/usr/share/logstash/config"]
