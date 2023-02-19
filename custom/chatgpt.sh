#!/bin/sh

echo "\n[+] Input:"
cat $1
echo "\n[+] Output:" 

curl=`cat <<EOS
curl -s https://api.openai.com/v1/completions \
  -H 'Content-Type: application/json' \
  -H "Authorization: Bearer $CHATGPT_TOKEN" \
  -d '{
  "model": "text-davinci-002",
  "prompt": $(jq -n --arg input "$(cat $1)" '$input | @json'),
  "max_tokens": 4000,
  "temperature": 1.0
}' \
--insecure | jq -r '.choices[].text' | sed 's/\\n/\n/g'
EOS`
eval ${curl}
