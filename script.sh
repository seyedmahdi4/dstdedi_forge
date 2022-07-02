#!/bin/bash
PA="/home/dst/.klei/DoNotStarveTogether/ReForged"

if [ -z "$MAX_PLAYER" ]; then
MAX_PLAYER=6
fi
echo "max player set $MAX_PLAYER"
if [ -z "$CLUSTER_DESCRIPTION" ]; then
CLUSTER_DESCRIPTION="This's create by Mahdi and Powered by Docker"
fi

if [ -z "$CLUSTER_NAME" ]; then
CLUSTER_NAME="Reforged Time! -- test"
fi
echo "server name is : $CLUSTER_NAME"
if [ -z "$CLUSTER_TOKEN" ]; then
echo ERROR 404! CLUSTER_TOKEN not found
exit 1
fi

sed -i "s/cluster_name = .*$/cluster_name = ${CLUSTER_NAME}/g" $PA/cluster.ini
sed -i "s/cluster_description = .*$/cluster_description = ${CLUSTER_DESCRIPTION}/g" $PA/cluster.ini
sed -i "s/max_players = .*$/max_players = ${MAX_PLAYER}/g" $PA/cluster.ini
sed -i "s/cluster_password = .*$/cluster_password = ${CLUSTER_PASSWORD}/g" $PA/cluster.ini
echo $CLUSTER_TOKEN > $PA/cluster_token.txt
echo $ADMIN_ID > $PA/adminlist.txt
echo -e "ServerModSetup(\"1938752683\")"   > ./dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua

if [ "$PUGNAX" = TRUE ]; then
echo -e "ServerModSetup(\"2038128735\")"   >> ./dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua
echo "pugnax ON"
fi
if [ "$HALLOWED" = TRUE  ]; then
echo -e "ServerModSetup(\"2633870801\")"   >> ./dontstarvetogether_dedicated_server/mods/dedicated_server_mods_setup.lua
echo "hallowed forge ON"
fi


cd /home/dst/dontstarvetogether_dedicated_server/bin64
echo "start server . . ."
./dontstarve_dedicated_server_nullrenderer_x64 -console -cluster ReForged -monitor_parent_process -shard Master

