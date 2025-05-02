#!/bin/sh
id -u
cd /etc/router/coprocessor
npm install -g nodemon
npm install
nodemon /etc/router/coprocessor/src/index.js