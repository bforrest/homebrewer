#!/bin/sh
set -e

if [ -f temp/pids/server.pid ]; then
  rm temp/pids/server.pid
fi

exec "$@"