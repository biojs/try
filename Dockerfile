FROM ubuntu:14.10
RUN apt-get update && apt-get -y install curl git vim 
RUN curl -sL https://deb.nodesource.com/setup | bash -
RUN apt-get -y install nodejs
RUN npm install -g npm
RUN npm install -g slush slush-biojs http-server expose-fs streaming-format sniper watchify browserify prunner
WORKDIR /root
ADD welcome.txt /
ADD run-container /run-container
ADD .bashrc /root/
ADD .npmrc /root/
ENTRYPOINT /run-container
