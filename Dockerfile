FROM eclipse-temurin:17-jre-focal

ARG JMUSICBOT_VERSION
ARG BUILDDATE

LABEL org.opencontainers.image.version="$JMUSICBOT_VERSION"
LABEL org.opencontainers.image.created="$BUILDDATE"

WORKDIR /app
#ADD https://github.com/jagrosh/MusicBot/releases/download/$JMUSICBOT_VERSION/JMusicBot-$JMUSICBOT_VERSION.jar ./JMusicBot.jar
ADD https://github.com/UnpixeltGuard/pixmusic/blob/d47bc5b2d8d0105d57796a8d6b6b99889d8ad735/JMusicBot-Snapshot-All.jar ./JMusicBot.jar

COPY docker-entrypoint.sh ./

RUN chmod +x ./docker-entrypoint.sh

VOLUME [ "/app" ]

ENV VERSION=$JMUSICBOT_VERSION
ENV DATE=$BUILDDATE

ENTRYPOINT [ "./docker-entrypoint.sh" ]
