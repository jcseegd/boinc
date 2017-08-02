FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      boinc \
      boinctui \
      ca-certificates \
      net-tools \
 && rm -rf /var/lib/apt/lists/*

COPY entrypoint /entrypoint
ENTRYPOINT /entrypoint
