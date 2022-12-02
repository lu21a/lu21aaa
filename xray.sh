#!/bin/sh
if [ ! -f UUID ]; then
  UUID="30dcbcb2-0426-487c-b97f-537b83fb31cb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

