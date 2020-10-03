#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:18.04

LABEL author=yiannisver@gmail.com

# COPY 1.15.1/ /home/1.15.1/
# COPY 1.16.3/ /home/1.16.3/

# # Set environment variables.
ENV HOME /home

# # Define working directory.
WORKDIR /home


# # Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y openjdk-8-jdk-headless && \
  apt-get install -y byobu curl screen nano bash grep git htop man unzip vim wget
  # java -Xmx1G -Xms1G -jar server.jar nogui

# Expose the listening port of your app
EXPOSE 25565
