[![Image Size](https://img.shields.io/docker/image-size/pixelt/pixmusic?sort=semver&style=for-the-badge)](https://hub.docker.com/layers/pixelt/pixmusic/latest/images/sha256:c37c0315014c85f7c069464fa5e0426d8585341c57b21c1a022fe6486387e776?context=explore)
[![Docker Pulls](https://img.shields.io/docker/pulls/pixelt/pixmusic?style=for-the-badge)](https://hub.docker.com/r/pixelt/pixmusic)
[![License](https://img.shields.io/github/license/UnpixeltGuard/pixmusic?style=for-the-badge)](https://github.com/UnpixeltGuard/pixmusic/blob/master/LICENSE)
[![Version](https://img.shields.io/docker/v/pixelt/pixmusic/latest?style=for-the-badge)](https://hub.docker.com/r/pixelt/pixmusic/tags)
[![Build](https://img.shields.io/github/workflow/status/UnpixeltGuard/pixmusic/Build%20latest%20docker%20image%20for%20JMusicBot?style=for-the-badge)](https://github.com/UnpixeltGuard/pixmusic/actions/workflows/main.yml)

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
