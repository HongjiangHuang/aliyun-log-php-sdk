#!/bin/bash

ROOT="$(dirname "${BASH_SOURCE}")"

for i in $(find "${ROOT}/Aliyun" -type f -name "*.php")
do
    b=$(basename  ${i})
    c=`</dev/null ack ${b} ${ROOT}/Aliyun`
    if [ -z "${c}" ]; then
        echo '"'${i}'"',
    fi
done
