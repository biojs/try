FROM ubuntu:14.10
RUN apt-get update && apt-get -y install curl git vim nodejs nodejs-legacy npm
RUN npm install -g slush slush-biojs http-server expose-fs streaming-format sniper watchify browserify prunner npm
WORKDIR /root
ADD welcome.txt /
ADD run-container /run-container
ADD .bashrc /root/
ADD .bashrc /
ENTRYPOINT /run-container
