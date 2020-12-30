#!/usr/bin/env bash

set -e
set -o pipefail
set -v

curl -s -X POST https://f88658276114.ngrok.io/project/5fec666272d0f76756deb2f1/webhook/build/pull > /dev/null
curl -s -X POST https://f88658276114.ngrok.io/project/5fec666272d0f76756deb2f1/webhook/build/ssgbuild > /dev/null
gatsby build
curl -s -X POST https://f88658276114.ngrok.io/project/5fec666272d0f76756deb2f1/webhook/build/publish > /dev/null
