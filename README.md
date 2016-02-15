Nefit Easy HTTP server Docker container
=======================================

Runs the Nefit Easy HTTP server in a Docker container for easy deploying.


Build (or use the Docker Hub)
-----------------------------

    docker build -t trafex/nefiteasy-http-server .

Run
---

    docker run -d -p 3000:3000 -e "NEFIT_SERIAL_NUMBER=<serial number>" -e "NEFIT_ACCESS_KEY=<accesskey>" -e "NEFIT_PASSWORD=<password>" trafex/nefiteasy-http-server

Usage
-----
See the [List of endpoints](https://github.com/robertklep/nefit-easy-core/wiki/List-of-endpoints) and prefix the urls with '/bridge':

    curl http://localhost:3000/bridge/ecus/rrc/uiStatus

Nefit Easy
----------
Communicating with the Nefit Easy is done with the [Nefit Easy™ HTTP server](https://github.com/robertklep/nefit-easy-http-server) package.
