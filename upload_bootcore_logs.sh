#!/usr/bin/env bash
set -euo pipefail

BUCKET="s3://bootcore"
STAMP="$(date -u +'%Y/%m/%d/%H')"
OUTDIR="/var/log/bootcore/uploads"
TMP="${OUTDIR}/logs-${STAMP//\//-}.tar.gz"

mkdir -p "$OUTDIR"

# Copy “current” logs to a snapshot so we don’t race appends
SNAPDIR="$(mktemp -d)"
cp /var/log/bootcore/nginx/access.log "$SNAPDIR/nginx-access.log" 2>/dev/null || true
cp /var/log/bootcore/nginx/error.log  "$SNAPDIR/nginx-error.log"  2>/dev/null || true
cp /var/log/bootcore/rails/production.log "$SNAPDIR/rails-production.log" 2>/dev/null || true

tar -C "$SNAPDIR" -czf "$TMP" .
rm -rf "$SNAPDIR"

aws s3 cp "$TMP" "${BUCKET}/${STAMP}/$(basename "$TMP")"

# keep local archives small (7 days)
find "$OUTDIR" -type f -name "*.tar.gz" -mtime +7 -delete
