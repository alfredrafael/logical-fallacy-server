#!/bin/bash

curl --include --request PATCH "http://localhost:4741/flash_cards/${ID}" \
  --header "Content-Type: application/json" \
    --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "flash_card": {
      "fallacy_name": "'"${F_NAME}"'",
      "fallacy_example": "'"${F_EXAMPLE}"'"
    }
  }'

echo