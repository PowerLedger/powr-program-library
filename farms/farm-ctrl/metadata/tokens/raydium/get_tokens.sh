#!/usr/bin/env bash

url="https://api.raydium.io/v2/sdk/token/raydium.mainnet.json"

if hash wget 2>/dev/null; then
  wget_or_curl="wget -O tokens.json $url"
elif hash curl 2>/dev/null; then
  wget_or_curl="curl -o tokens.json -L $url"
else
  echo "Error: Neither curl nor wget were found" >&2
  return 1
fi

exec $wget_or_curl