#!/bin/bash
apk add --no-cache jq
sleep 10
set -x
while ! nc -z bitcoind 18443; do sleep 1; done
curl --user mempool:mempool --data-binary '{"jsonrpc": "1.0", "id":"curltest", "method": "generatetoaddress", "params": [140, "bcrt1qurpvvrlwxagq3yrvztl4htrcwlrc86a3ajzkj3"] }' -H 'content-type: text/plain;' http://bitcoind:18443/
