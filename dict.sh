#!/bin/bash
url="https://api.dictionaryapi.dev/api/v2/entries/en/"
echo "Enter the word: "
read n
ans=$url$n
result=`curl -s  $ans | jq -r '.[0].meanings[].definitions[].definition' 2>/dev/null`

if [ $? -ne 0 ]
then
    echo "Check your word"
else
    echo $result
fi
