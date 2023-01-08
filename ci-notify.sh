#!bin/bash

TIME="10"
TELEGRAM_BOT_TOKEN="******************************************"
TELEGRAM_USER_ID="148622649"

URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="Deploy status: $1%0AStage:+$CI_JOB_STAGE%0A%0AProject:+$CI_PROJECT_NAME%0ABranch:+$CI_COMMIT_REF_SLUG%0AURL:+$CI_PROJECT_URL/-/pipelines/$CI_PIPELINE_ID/%0ACommit:+$CI_COMMIT_MESSAGE"

curl -s --max-time $TIME -d "chat_id=$TELEGRAM_USER_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null

echo "message up\n"
