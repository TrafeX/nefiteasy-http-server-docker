FROM node:14-alpine

LABEL Maintainer="Tim de Pater <code@trafex.nl>" \
      Description="Runs the Nefit Easy HTTP server in a Docker container for easy deploying."

# Create workdir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Add application
COPY package*.json /usr/src/app/
RUN npm ci
COPY . /usr/src/app

CMD [ "npm", "run", "start" ]
