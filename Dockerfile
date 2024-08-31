FROM debian:latest

ARG BUILDPLATFORM BUILDOS BUILDARCH BUILDVARIANT TARGETPLATFORM TARGETOS TARGETARCH TARGETVARIANT
ARG DEBIAN_FRONTEND='noninteractive'

RUN apt update && apt upgrade -y || apt-get update && apt-get upgrade -y

RUN apt install -y \
  curl \
  wget \
  bash \
  coreutils \
  net-tools \
  vim \
  lsb-release

VOLUME [ "/etc/earnapp" ]
VOLUME [ "/earnapp" ]

COPY bin/ /usr/bin
COPY etc/ /etc

ENTRYPOINT [ "bash", "/etc/services.d/earnapp/run" ]
