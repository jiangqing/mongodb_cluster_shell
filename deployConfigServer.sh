#!/bin/sh
#启动配置服务器模板
#author:qingqing
cd /data/mongodb
mkdir configData
mkdir configLogs
cd configLogs
touch configMongodb.log
cd ../bin
chmod 777 mongod
chmod 777 mongo
./mongod --port 2222 --dbpath ../configData --logpath ../configLogs/configMongodb.log --fork
echo 'start config server finished'
