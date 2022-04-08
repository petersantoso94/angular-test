FROM gitpod/workspace-full:latest

# Change to root for the installation(s)
USER root

# Install Chromium
RUN apt-get update && apt-get install -y --no-install-recommends chromium \
    libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Give back control
USER root
