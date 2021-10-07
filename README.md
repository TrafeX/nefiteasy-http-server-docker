Nefit Easy HTTP server Docker container
=======================================

Runs the Nefit Easy HTTP server in a Docker container for easy deploying.


[![Docker Pulls](https://img.shields.io/docker/pulls/trafex/nefiteasy-http-server.svg)](https://hub.docker.com/r/trafex/nefiteasy-http-server/)


Build (or use the prebuild image on [Docker Hub](https://hub.docker.com/r/trafex/nefiteasy-http-server/))
-----------------------------

    docker build -t trafex/nefiteasy-http-server .

Run
---

    docker run -d -p 3000:3000 \
        -e "NEFIT_SERIAL_NUMBER=<serial number>" \
        -e "NEFIT_ACCESS_KEY=<accesskey>" \
        -e "NEFIT_PASSWORD=<password>" \
        trafex/nefiteasy-http-server

Usage
-----
See the [List of endpoints](https://github.com/robertklep/nefit-easy-core/wiki/List-of-endpoints) and prefix the urls with `/bridge`:

    curl http://localhost:3000/bridge/ecus/rrc/uiStatus

Or use the higher-level [commands API](https://github.com/robertklep/nefit-easy-http-server#commands-api), prefixed with `/api`:

    curl http://127.0.0.1:3000/api/status

Nefit Easy
----------
Communicating with the Nefit Easy is done with the [Nefit Easy™ HTTP server](https://github.com/robertklep/nefit-easy-http-server) package.
