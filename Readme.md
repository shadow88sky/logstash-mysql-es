# 简介
此项目是用logstash来将Mysql的单表或者多表数据同步到ES中的,  
mysql.conf的demo是全增量同步，即根据id自增长为记录列。  
每次同步完logstash都会记录该id，下次同步从该id开始。 也可自己修改。

mysql.conf是示例:
* jdbc_connection_string
  数据库连接字符串,格式"jdbc:mysql://connection string/database"

* jdbc_user
  数据库用户名

* jdbc_password
  数据库密码  

* statement_filepath
  数据库查询脚本路径

* elasticsearch.hosts
  es的地址

* elasticsearch.index
  索引名