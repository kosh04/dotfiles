#!/bin/sh

api_url=https://api.github.com/markdown/raw

curl -s --data-binary "@${1:--}" -H "Content-Type: text/plain" $api_url
