# etcd cluster

建立一个3节点的etcd集群。基于docker swarm overlay网络，但是不适用swarm mode，因为需要随时启停个别etcd node，swarm模式并不适合这种场景。

## 配置

1. 创建3节点

```
./create_cluster
```

|name|role|
|---|---|
|etcd0|swarm master node|
|etcd1|swarm master node|
|etcd2|swarm master node|

2. 配置swarm集群

全master，方便使用overlay网络

省略一万字，教程很多


|name|IP|
|---|---|
|etcd0|192.168.99.100|
|etcd1|192.168.99.101|
|etcd2|192.168.99.102|

3. 启动etcd实例

依次启动（并行是否可行未知，没有必要）

`docker-compose -f docker-compose-etcd0.yml up -d`
`docker-compose -f docker-compose-etcd1.yml up -d`
`docker-compose -f docker-compose-etcd2.yml up -d`

OK，完成

client通信绑定各自IP的2379端口
peer通信使用overlay网络

## 使用

etcd的正常用法