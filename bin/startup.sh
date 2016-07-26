#!/bin/bash

set -e

envsubst '$REDIS_HOST' < /opt/batsd/config.tmpl.yml > /opt/batsd/config.yml

exec /opt/batsd/bin/batsd -c /opt/batsd/config.yml receiver
