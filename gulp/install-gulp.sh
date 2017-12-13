#!/bin/bash
sed -i "s#jessie main#jessie main contrib non-free#g" /etc/apt/sources.list
apt-get -qq update
apt-get -qq install -y imagemagick curl build-essential dh-autoreconf
curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt-get -qq install -y nodejs
npm install gulp-cli -g
npm install gulp -D
npm install --save-dev gulp-imagemin gulp-newer gulp-image-resize imagemin-jpeg-recompress imagemin-mozjpeg
