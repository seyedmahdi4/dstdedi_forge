### Don't starve together Reforged Server

##### envirement variables:

- CLUSTER_TOKEN       -> require
- MAX_PLAYER          -> default = 6
- CLUSTER_NAME        -> default = Refoged Time! . this is your server's name
- CLUSTER_DESCRIPTION -> default = This's create by Mahdi and Powered by Docker
- CLUSTER_PASSWORD    -> default empty . Optional

how to get cluster token:

visit https://accounts.klei.com/account/game/servers?game=DontStarveTogether to generate server configuration files

Alternatively generate a cluster_token you can open the console from a logged-in game client with the tilda key (~) and type:
TheNet:GenerateClusterToken()

This will create 'cluster_token.txt' in your client settings directory. Copy this into your cluster settings directory.

klei/DoNotStarveTogether/******/Cluster_1/Master/cluster_token.txt or ....

example:

run:
- docker run --name dst -e "CLUSTER_TOKEN=....." -e "CLUSTER_NAME=reforged server' seyedmahdi3/dstdedi_forge:latest

stop:
- docker stop dst

remove container:
- docker rm -f dst
