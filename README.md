### Don't starve together Reforged Server

# merge to https://github.com/seyedmahdi4/dstdedi

#### envirement variables:

- CLUSTER_TOKEN       -> require
- MAX_PLAYER          -> default = 6
- CLUSTER_NAME        -> default = Refoged Time! . this is your server's name
- CLUSTER_DESCRIPTION -> default = This's create by Mahdi and Powered by Docker
- CLUSTER_PASSWORD    -> default empty . Optional

###### for pugnax (Extera wavesets)
- PUGNAX=TRUE    -> default disable

###### Hallowed forge 
- HALLOWED=TRUE  -> default disable


##### how to get cluster token:

visit https://accounts.klei.com/account/game/servers?game=DontStarveTogether to generate server configuration files

Alternatively generate a cluster_token you can open the console from a logged-in game client with the tilda key (~) and type:
TheNet:GenerateClusterToken()

This will create 'cluster_token.txt' in your client settings directory. Copy this into your cluster settings directory.

klei/DoNotStarveTogether/******/Cluster_1/Master/cluster_token.txt or ....

##### example:

run:
- ```docker run --name dst -e "CLUSTER_TOKEN=....." -e "CLUSTER_NAME=reforged server' seyedmahdi3/dstdedi_forge:latest```

run with pugnax:
- ```docker run --name dst -e PUGNAX=TRUE -e "CLUSTER_TOKEN=....." -e "CLUSTER_NAME=reforged server' seyedmahdi3/dstdedi_forge:latest```

run with hollowed:
- ```docker run --name dst -e HALLOWED=TRUE -e "CLUSTER_TOKEN=....." -e "CLUSTER_NAME=reforged server' seyedmahdi3/dstdedi_forge:latest```

stop:
- ```docker stop dst```

remove container:
- ```docker rm -f dst```
