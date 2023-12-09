# 引数が指定されているか確認
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 snyk_log error_log "
    exit 1
fi

JSON_FILE="$1"
ERROR_FILE="$2"

# jq で JSON のフォーマットを確認
if jq . "$JSON_FILE" >/dev/null 2>&1; then
    echo "write snyk-log"
    gcloud logging write --payload-type=json snyk-log "$(cat $JSON_FILE)"
else
    echo "write snyk-error-log"
    gcloud logging write --payload-type=text snyk-error-log  "$(cat $ERROR_FILE)"
fi
