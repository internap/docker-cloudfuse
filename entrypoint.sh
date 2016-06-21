#!/usr/bin/env bash

if [ -z "${USERNAME}" ]; then
  echo 'need variable `USERNAME`'
  exit 1
fi

OPTIONS="username=${USERNAME}"

array=(API_KEY TENANT PASSWORD AUTHURL REGION USE_SNET CACHE_TIMEOUT VERIFY_SSL)
for opt in "${array[@]}" ; do
    if [ -n "${!opt}" ]; then
      lower_opt=$(echo ${opt} | tr '[:upper:]' '[:lower:]')
      OPTIONS="${OPTIONS},${lower_opt}=${!opt}"
    fi
done

cloudfuse -d -o ${OPTIONS}  /swift

exec $@
