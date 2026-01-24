#!/usr/bin/env zsh
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
if [ ! -d "$DOCKER_CONFIG/cli-plugins" ]; then mkdir -p $DOCKER_CONFIG/cli-plugins ; fi
if [ ! -f "$DOCKER_CONFIG/cli-plugins/docker-compose" ]; then 
    curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-darwin-aarch64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
    chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose
fi
