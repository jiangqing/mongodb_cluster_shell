#!/bin/sh
#启动路由。路由依据mongodb.conf的配置来配置和启动整个集群
#author:qingqing
cd bin
./mongos  --config ../mongodb.conf
echo '启动mongos完成....'
