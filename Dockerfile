# Docker image running Docker registry with volumes
#
# VERSION   0.0.1
FROM registry:latest
MAINTAINER Jason Odoom <jason@ohdoom.net>

# Add the custom configuration file  
ADD ./config.yml /docker-registry/config/config.yml

# Create the data directory
RUN mkdir /data

# Set the configuration file to config.yml
env DOCKER_REGISTRY_CONFIG /docker-registry/config/config.yml

# Make sure we use the prod configuration settings 
env SETTINGS_FLAVOR prod
