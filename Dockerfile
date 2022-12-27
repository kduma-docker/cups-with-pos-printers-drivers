FROM ydkn/cups:latest

COPY tmx-cups-2.0.3.0.tar.gz /usr/local/src/tmx-cups-2.0.3.0.tar.gz

RUN tar -C /usr/local/src -xvzf /usr/local/src/tmx-cups-2.0.3.0.tar.gz

RUN (echo 6 | /bin/bash /usr/local/src/tmx-cups/install.sh); exit 0;