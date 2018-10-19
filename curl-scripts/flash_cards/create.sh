curl --include --request POST 'http://localhost:4741/flash_cards' \
  --header "Content-Type: application/json" \
  --data '{
    "flash_card": {
      "fallacy_name": "'"${F_NAME}"'",
      "fallacy_example": "'"${F_EXAMPLE}"'"
    }
  }'

echo