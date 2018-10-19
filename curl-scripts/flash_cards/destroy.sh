#!/bin/bash

curl "http://localhost:4741/flash_cards/${ID}" \
--include \
--header "Authorization: Token token=${TOKEN}"
--request DELETE \

echo
