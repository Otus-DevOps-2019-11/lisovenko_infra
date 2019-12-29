#!/bin/bash

git clone -b monolith https://github.com/express42/reddit.git

cd reddit && bundle install

cd /home/appuser/reddit/

puma -d
