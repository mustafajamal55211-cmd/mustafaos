FROM debian:trixie
RUN apt-get update && apt-get install -y live-build xfce4 picom zram-tools firefox-esr
WORKDIR /build
COPY . .
CMD ["lb", "build"]