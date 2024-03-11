#!/bin/sh

echo "Starting JMusicBot made by ${bold}jagrosh${bold} (https://github.com/jagrosh/MusicBot)
JMusicBot version: $VERSION, Dockerized on: $DATE"
echo ""

FILE=/app/config.txt
if [ ! -f "$FILE" ]; then
    echo "No config.txt found, downloading example config from
    https://raw.githubusercontent.com/UnpixeltGuard/pixmusic/main/example-config"
    
    curl -L https://raw.githubusercontent.com/UnpixeltGuard/pixmusic/main/example-config -o /app/config.txt
    echo ""
fi

cd /app

exec java -Dnogui=true -jar /app/JMusicBot.jar
