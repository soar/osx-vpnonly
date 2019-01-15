#!/bin/sh

PF_CONF_FILE=/etc/pf.conf
DIR=$(cd `dirname $0` && pwd)

mkdir -p /etc/pf.tables
cp -f ${DIR}/pf.anchors/* /etc/pf.anchors/
cp -f ${DIR}/pf.tables/* /etc/pf.tables/

grep -q -x -F '# vpnonly' ${PF_CONF_FILE} || cat ./pf.conf >> ${PF_CONF_FILE}

./enable.sh
