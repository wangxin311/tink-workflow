#!/bin/bash

export UUID=$(uuidgen|tr "[:upper:]" "[:lower:]")
export MAC=b8:59:9f:e0:f6:8c
cat hardware.json | envsubst  > hw1.json

echo wrote hw1.json - $UUID


