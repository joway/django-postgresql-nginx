FROM python:2.7

MAINTAINER joway wong "joway.w@gmail.com"

# Install packages
RUN rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y \
    build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev \
    g++ \
	  curl \
    postgresql \
    postgresql-contrib \
    supervisor \
    memcached \
    nginx \
    ruby-full rubygems \
	  && curl -sL https://deb.nodesource.com/setup_8.x | bash - \
	  && apt-get install -y nodejs \
    && pip install --upgrade pip \
    && rm -rf /var/lib/apt/lists/*

