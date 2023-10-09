#!/usr/bin/bash
export NEZHA_SERVER=""
export NEZHA_KEY=""

chmod +x server start.sh
nohup ./server -s ${NEZHA_SERVER} -p ${NEZHA_KEY} > /dev/null 2>&1 &   #！若需要tls，在此句 > 前面加上--tls即可

tail -f /dev/null
