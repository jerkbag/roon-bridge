# Use Debian as the base image
#FROM debian:latest
FROM debian:bookworm-slim
# Install required dependencies
RUN apt update && \
    apt install -y curl alsa-utils libasound2 dbus mono-runtime bzip2 && \
    apt clean && rm -rf /var/lib/apt/lists/* && \
    cd /opt/ && \
    curl -O https://download.roonlabs.net/builds/RoonBridge_linuxx64.tar.bz2 && \
    tar -xjf RoonBridge_linuxx64.tar.bz2 && \
    cd /opt/RoonBridge/ && \
    chmod +x start.sh

# Set working directory
WORKDIR /opt/RoonBridge/

# Default command to start Roon Bridge
CMD ["./start.sh"]
