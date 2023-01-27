#!/usr/bin/env bash
set -e

rm -f tmp/pids/server.pid
exec rails s -b 0.0.0.0 "$@"
