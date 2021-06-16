FROM mhart/alpine-node:15.13.0
  
COPY . /app


CMD node /app/app.js

EXPOSE  3000
