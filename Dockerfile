FROM shadow88sky/logstash-mysql-es:v1.0
COPY ./mysql.conf  /usr/share/logstash/bin
COPY ./mysql.sql /usr/share/logstash/bin
CMD ["./bin/logstash","-f","./bin/mysql.conf"]
