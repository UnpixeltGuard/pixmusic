#!/bin/sh

echo "Starting JMusicBot made by ${bold}jagrosh${bold} (https://github.com/jagrosh/MusicBot)
JMusicBot version: $VERSION, Dockerized on: $DATE"
echo ""

FILE=/app/config/config.txt
if [ ! -f "$FILE" ]; then
    echo "No config.txt found, downloading example config from
    https://github.com/jagrosh/MusicBot/releases/download/0.2.9/config.txt"
    
    curl -L https://github.com/jagrosh/MusicBot/releases/download/0.2.9/config.txt -o /opt/jmusicbot/config/config.txt
    echo ""
fi

cd /app/config

exec java -Dnogui=true -jar /app/JMusicBot.jar
