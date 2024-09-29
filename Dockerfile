FROM eclipse-temurin:17-jre-focal

ARG JMUSICBOT_VERSION
ARG BUILDDATE

LABEL org.opencontainers.image.version="$JMUSICBOT_VERSION"
LABEL org.opencontainers.image.created="$BUILDDATE"

WORKDIR /app
#ADD https://github.com/jagrosh/MusicBot/releases/download/$JMUSICBOT_VERSION/JMusicBot-$JMUSICBOT_VERSION.jar ./JMusicBot.jar
ADD https://github.com/UnpixeltGuard/pixmusic/blob/afbe5134bea04c7e8a488e283de13f30e81b4ed3/JMusicBot-0.4.3.jar ./JMusicBot.jar

COPY docker-entrypoint.sh ./

RUN chmod +x ./docker-entrypoint.sh

VOLUME [ "/app" ]

ENV VERSION=$JMUSICBOT_VERSION
ENV DATE=$BUILDDATE

ENTRYPOINT [ "./docker-entrypoint.sh" ]
