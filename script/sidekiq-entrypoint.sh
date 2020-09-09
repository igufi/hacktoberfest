#!/bin/sh

# script/server: Launch the application and any extra required processes
#                locally.

set -e

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

RAILS_MASTER_KEY=${RAILS_MASTER_KEY} bundle exec sidekiq