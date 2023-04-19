FROM node:18

# Create app directory
WORKDIR /usr/src/app

COPY ./cypress ./cypress
copy ./cypress.config.js ./cypress.config.js

RUN npm install cypress --save-dev
RUN apt-get update
RUN apt-get install -y libgtk2.0-0 libgtk-3-0 libgbm-dev libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb