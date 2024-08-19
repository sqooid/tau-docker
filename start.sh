#!/bin/bash

NAME=${SHAPE:-compute}
if [ ! -f /tb/config/${NAME}.yaml ]; then
  echo "Creating new config"
  tau config generate -n ${DOMAIN} -s ${NAME} --dv --swarm
else
  echo "Using existing config"
fi
tau conf validate -s ${NAME}
tau start -s ${NAME}