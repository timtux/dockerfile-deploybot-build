FROM ubuntu:16.04

RUN apt-get -y update && apt-get install -y \
       	curl \
       	sudo \
       	nodejs \
       	npm \
       	git \
        gem \
        ruby \
        ruby-dev \
        php

RUN gem install compass

RUN echo '{ "allow_root": true }' > /root/.bowerrc && ln -s /usr/bin/nodejs /usr/bin/node && sudo npm install -g gulp-cli bower
