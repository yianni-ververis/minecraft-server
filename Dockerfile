  #
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:18.04

COPY 1.15.1/ /home/1.15.1/

# # Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  # apt-get install -y  python-software-properties && \ 
  # ls -la ./home && \
  apt-get install -y openjdk-8-jdk-headless && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  java -Xmx1G -Xms1G -jar /home/1.15.1/server.jar nogui

# # Set environment variables.
ENV HOME /home/1.15.1/

# # Define working directory.
WORKDIR /home/1.15.1

# # Define default command.
# CMD ["bash"]