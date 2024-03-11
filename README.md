Docker image for JMusicBot for my personal discord server. 

[JMusicBot GitHub](https://github.com/jagrosh/MusicBot)

[JMusicBot Homepage](https://jmusicbot.com/)

I used following projects as template:

[Bas-Korver](https://github.com/Bas-Korver/docker-jmusicbot)

[alexandreteles](https://github.com/alexandreteles/jmusicbot-docker)


Mount your `config.txt` on the path `/app/config.txt`

```
$ docker run --name jmusicbot -d -v /path/to/config.txt:/app/config.txt:ro \
-v /path/to/serversettings.json:/app/serversettings.json:rw \
-v /path/to/Playlists:/app/Playlists:rw --restart=unless-stopped \
pixelt/pixmusic:latest
```

If you don't already have a `config.txt` either download the template or mount the volume with `:rw`,
this will download the current template from github.

Without own config.txt
```
$ docker run --name jmusicbot -d -v /path/to/config.txt:/app/config.txt:rw \
-v /path/to/serversettings.json:/app/serversettings.json:rw \
-v /path/to/Playlists:/app/Playlists:rw --restart=unless-stopped \
pixelt/pixmusic:latest
```

For setting up playlists refer to the official documentation

[JMusicBot Playlists](https://jmusicbot.com/playlists/)

[JMusicBot Commands](https://jmusicbot.com/commands/)

[JMusicBot Troubleshooting](https://jmusicbot.com/troubleshooting/)
