#!/bin/bash

API_KEY="API_KEY_HERE"
QUESTION="$*"

SYSTEM_PROMPT="You are an assistant that is running via a cli. Keep replies short, don't explain unless asked to, don't use markdown. The system is gnu/linux on fedora with gnome."

curl -s -X POST "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent" \
  -H "Content-Type: application/json" \
  -H "X-goog-api-key: $API_KEY" \
  -X POST \
  -d "$(jq -n \
    --arg sys "$SYSTEM_PROMPT" \
    --arg usr "$QUESTION" \
    '{system_instruction: {
       parts: [{text: $sys}]
     }, contents: [
      {parts: [{text: $usr}]}
    ]}')" \
  | jq -r '.candidates[0].content.parts[0].text' | awk '{print "\033[1;33m" $0 "\033[0m"}'
