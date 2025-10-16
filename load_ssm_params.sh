#!/bin/bash
set -e

SSM_PATH="/prod/bootcore/"
ENV_DIR="/home/ec2-user/BootCoder_Profile"
TMP_FILE="$ENV_DIR/.env.prod.tmp"
FINAL_FILE="$ENV_DIR/.env.production"

echo "AWS SSM: Pulling Params from $SSM_PATH"

# clear tmp file first
> "$TMP_FILE"

aws ssm get-parameters-by-path \
  --path "$SSM_PATH" \
  --with-decryption \
  --recursive \
  --query "Parameters[*].{Name:Name,Value:Value}" \
  --output text | while read NAME VALUE; do

  VAR_NAME=$(echo "$NAME" | awk -F'/' '{print toupper($NF)}')
  echo -e "\e[0;36;1mProcessing $VAR_NAME\e[0m"
  export $VAR_NAME=$VALUE
  echo "$VAR_NAME=$VALUE" >> "$TMP_FILE"

done

# Deduplicate into final
sort -u "$TMP_FILE" > "$FINAL_FILE"
