#!/usr/bin/env bash
set -euo pipefail

OUT=/etc/nginx/runtime/cloudfront-realip.conf
TMP="$(mktemp)"
URL="https://ip-ranges.amazonaws.com/ip-ranges.json"

# Requirements: curl + jq
command -v curl >/dev/null 2>&1 || { echo "curl not found"; exit 1; }
command -v jq   >/dev/null 2>&1 || { echo "jq not found"; exit 1; }

# Fetch, filter CLOUDFRONT ranges, write nginx directives
curl -fsSL "$URL" \
  | jq -r '
      .prefixes[]
      | select(.service=="CLOUDFRONT")
      | .ip_prefix
    ' \
  | sort -u \
  | awk 'BEGIN{print "# Auto-generated. DO NOT EDIT."} {print "set_real_ip_from "$1";"}' \
  > "$TMP"

# Sanity: ensure we got a reasonable number of ranges
LINES=$(grep -c '^set_real_ip_from ' "$TMP" || true)
if [ "$LINES" -lt 10 ]; then
  echo "Refusing to write $OUT: only $LINES CloudFront ranges found."
  rm -f "$TMP"
  exit 1
fi

# Add localhost as well (handy if you ever proxy internally)
echo "set_real_ip_from 127.0.0.1;" >> "$TMP"

# Atomically replace
install -m 0644 "$TMP" "$OUT"
rm -f "$TMP"

# Validate nginx config & reload
nginx -t && nginx -s reload
