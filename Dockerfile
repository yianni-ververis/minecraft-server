# Pull base image.
FROM ubuntu:20.04

LABEL author=yiannisver@gmail.com

# # Set environment variables.
ENV HOME /home

# # Define working directory.
WORKDIR /home

# # Install & update packages.
RUN \
  apt update && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y tzdata && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt install -y openjdk-16-jdk-headless && \
  apt-get install -y byobu curl screen nano bash grep git htop man unzip vim wget

# Expose the listening port of your app
EXPOSE 25565
