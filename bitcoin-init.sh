#!/bin/bash
apk add --no-cache jq
sleep 10
set -x
while ! nc -z bitcoind 18443; do sleep 1; done
curl --user mempool:mempool --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "generatetoaddress", "params": [110, "bcrt1qsdf9c0kj6p29795r5lcj95pcx2ywcmpgm82r5j"] }' -H 'content-type: text/plain;' http://bitcoind:18443/
