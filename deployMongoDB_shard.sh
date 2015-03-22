#!/bin/sh
#启动分片模板(跟启动仲裁节点一样，注意启动的时候需要指定分片，就是要有--replSet参数。在配置的时候，需要通过rs.addArb来添加仲裁节点，而普通分片则是用rs.add("ip:port"))
#常用命令:
#rs.ststus() 显示副本集状态信息
#rs.initiate(config={_id:"shard",members:[{_id:0,host:"ip:port"}]}) 初始化主分片，之后可以在主分片里通过add或者addArb来添加分片或者仲裁节点
#rs.conf() 显示副本集的配置信息
#author:qingqing
cd /data/mongodb
mkdir shardmongodbData
mkdir shardmongodbLogs
cd shardmongodbLogs
touch shardmongodb.log
cd ../bin
chmod 777 mongod
chmod 777 mongo
./mongod --replSet shard --port 4444 --dbpath ../shardmongodbData --logpath ../shardmongodbLogs/mongodb.log --fork
echo 'start mongodb server finished'
ps -ef|grep mongo
