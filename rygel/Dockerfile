ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# install rygel
RUN apt-get update \
  && apt-get install -y rygel \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

COPY run.sh /
RUN chmod +x /run.sh

CMD ["/run.sh"]
