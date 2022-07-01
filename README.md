### Don't starve together Reforged Server

##### envirement variables:

- CLUSTER_TOKEN       -> require
- MAX_PLAYER          -> default = 6
- CLUSTER_NAME        -> default = Refoged Time! . this is your server's name
- CLUSTER_DESCRIPTION -> default = This's create by Mahdi and Powered by Docker
- CLUSTER_PASSWORD    -> default empty . Optional

example:

run:
- docker run --name dst -e "CLUSTER_TOKEN=....." -e "CLUSTER_NAME=reforged server' seyedmahdi3/dstdedi_forge:latest

stop:
- docker stop dst

remove container:
- docker rm -f dst
