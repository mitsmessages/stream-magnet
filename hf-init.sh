#!/bin/sh
set -eu

if [ -n "${SPACE_HOST:-}" ]; then
  export DOMAIN="https://${SPACE_HOST}"
elif [ -n "${RENDER_EXTERNAL_URL:-}" ]; then
  export DOMAIN="${RENDER_EXTERNAL_URL}"
fi

exec /init
