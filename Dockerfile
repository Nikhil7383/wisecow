# Dockerfile for Wisecow (bash netcat fortune + cowsay web server)
FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

# Install required packages: netcat (openbsd), fortune, cowsay, etc.
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      netcat-openbsd \
      fortune-mod \
      fortunes \
      cowsay \
      ca-certificates \
      tzdata && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Make /usr/games visible in PATH for non-root users
ENV PATH="/usr/games:${PATH}"

WORKDIR /app
COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

# Optional: non-root user
RUN useradd -m -u 2000 appuser && chown -R appuser:appuser /app
USER appuser

EXPOSE 4499

HEALTHCHECK --interval=15s --timeout=3s --start-period=5s --retries=3 \
  CMD nc -z localhost 4499 || exit 1

CMD ["/bin/bash", "/app/wisecow.sh"]


