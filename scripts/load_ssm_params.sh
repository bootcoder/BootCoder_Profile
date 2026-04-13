#!/bin/bash
set -euo pipefail

SSM_PATH="/prod/bootcore/"
ENV_DIR="/home/ec2-user/bootcore"
TMP_FILE="$ENV_DIR/.env.prod.tmp"
FINAL_FILE="$ENV_DIR/.env.production"

echo "AWS SSM: Pulling Params from $SSM_PATH"

# clear tmp file first
: > "$TMP_FILE"

while IFS=$'\t' read -r NAME VALUE; do
  VAR_NAME=$(awk -F'/' '{print toupper($NF)}' <<<"$NAME")
  echo -e "\e[0;36;1mProcessing $VAR_NAME\e[0m"
  printf '%s=%s\n' "$VAR_NAME" "$VALUE" >> "$TMP_FILE"
done < <(
  aws ssm get-parameters-by-path \
    --path "$SSM_PATH" \
    --with-decryption \
    --recursive \
    --query "Parameters[*].[Name,Value]" \
    --output text
)

sort -u "$TMP_FILE" > "$FINAL_FILE"
