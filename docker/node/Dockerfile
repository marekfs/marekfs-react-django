FROM node:10.16-stretch

WORKDIR /home/node/app

RUN echo "#!/bin/sh\n\
 npm init -y\n\
 npm install -D @babel/core @babel/preset-env @babel/preset-react babel-loader\n\
 npm install -D css-loader node-sass webpack webpack-cli" > /usr/local/bin/startup.sh \
   && chmod 777 /usr/local/bin/startup.sh
