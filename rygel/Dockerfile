ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# detect package manager and install rygel if available
RUN set -eux; \
    if command -v apt-get >/dev/null 2>&1; then \
      apt-get update && apt-get install -y rygel && apt-get clean && rm -rf /var/lib/apt/lists/*; \
    elif command -v apk >/dev/null 2>&1; then \
      # try Alpine package manager; if rygel isn't available, apk will fail
      apk update && apk add --no-cache rygel || (echo "rygel not available in apk repos"; false); \
    else \
      echo "Unsupported base image: no apt-get or apk found"; false; \
    fi
COPY run.sh /
RUN chmod +x /run.sh

CMD ["/run.sh"]
