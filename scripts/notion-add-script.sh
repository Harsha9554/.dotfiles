#!/bin/bash

# 1 - database id
# 2 - name property
# 3 - name content
# 4 - mask property
# 5 - mask content

generate_post_json() {
    POST_JSON='{
        "parent": {
            "type": "database_id",
            "database_id": "'$1'"
        },
        "properties": {
            "'$2'": {
                "type": "title",
                "title": [
                    {
                        "type": "text",
                        "text": {
                            "content": "'$3'"
                        }
                    }
                ]
            },
            "'$4'": {
                "multi_select": [
                    {
                        "name": "'$5'"
                    }
                ]
            }
        }
    }'
}

TYPE=$(gum choose "task" "project" "idea")
TITLE_CONTENT=$(gum input --placeholder "$TYPE title")
MASK_CONTENT=$(gum choose "personal" "work" "hzln3t")

TITLE=""
MASK=""
NOTION_API_KEY=""
NOTION_DB_ID=""

case $TYPE in
    task)
        NOTION_API_KEY=$NOTION_TASKS_TOKEN
        NOTION_DB_ID=$NOTION_TASKS_DB_ID
        TITLE="task-name"
        MASK="task-mask"
        ;;
    project)
        NOTION_API_KEY=$NOTION_PROJECTS_TOKEN
        NOTION_DB_ID=$NOTION_PROJECTS_DB_ID
        TITLE="project-name"
        MASK="project-mask"
        ;;
    idea)
        NOTION_API_KEY=$NOTION_IDEAS_TOKEN
        NOTION_DB_ID=$NOTION_IDEAS_DB_ID
        TITLE="idea-name"
        MASK="idea-mask"
        ;;
esac

generate_post_json $NOTION_DB_ID $TITLE $TITLE_CONTENT $MASK $MASK_CONTENT

URL="https://api.notion.com/v1/pages"
HTTP_CODE=$(curl --write-out "%{http_code}" "$URL" \
  -H 'Authorization: Bearer '"$NOTION_API_KEY"'' \
  -H "Content-Type: application/json" \
  -H 'Notion-Version: 2022-06-28' \
  --data "$POST_JSON" --silent)
gum spin --spinner dot --title "performing notion's add-$TYPE..." -- sleep 4

if [ ${HTTP_CODE: -3} = '200' ]; then
    gum style \
    --foreground "#FFF" --border-foreground "#7D2" --border double \
    --align center --width 50 --margin "1 2" --padding "1 2" \
    "add-$TYPE success! 🔥"
else
    gum style \
    --foreground "#FFF" --border-foreground "#B12" --border double \
    --align center --width 50 --margin "1 2" --padding "1 2" \
    "failed! 🥹"
fi

