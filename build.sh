#!/bin/sh
if [ "$1" = "build" ];then
    mkdir /home/changsheng/project/project58045/project
    cp -a /home/changsheng/project/project58045/server/. /home/changsheng/project/project58045/project/
    cd /home/changsheng/project/project58045/project
    rm -rf /home/changsheng/project/project58045/server
    echo "执行成功"
fi
