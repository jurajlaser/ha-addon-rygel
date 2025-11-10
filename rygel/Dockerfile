FROM ghcr.io/home-assistant/amd64-base:latest
RUN apt-get update && apt-get install -y rygel && apt-get clean
COPY run.sh /
RUN chmod +x /run.sh
CMD ["/run.sh"]