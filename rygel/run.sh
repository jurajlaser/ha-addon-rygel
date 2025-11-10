#!/usr/bin/env bash
set -e

echo "Starting Rygel DLNA Server..."
# Use exec so the process runs in foreground and receives signals
exec rygel
