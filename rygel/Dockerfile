ARG BUILD_FROM=debian:stable-slim
FROM ${BUILD_FROM}

ENV DEBIAN_FRONTEND=noninteractive

# install rygel and minimal runtime deps
RUN apt-get update \
  && apt-get install -y --no-install-recommends rygel dbus \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY run.sh / 
RUN chmod +x /run.sh

CMD ["/run.sh"]
