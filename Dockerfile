FROM ydkn/cups:latest

COPY tmx-cups-2.0.3.0.tar.gz /usr/local/src/tmx-cups-2.0.3.0.tar.gz
RUN tar -C /usr/local/src -xvzf /usr/local/src/tmx-cups-2.0.3.0.tar.gz
RUN (echo 6 | /bin/bash /usr/local/src/tmx-cups/install.sh); exit 0;

COPY hprt_pos_printer_linux_driver_v1.2.5.zip /usr/local/src/hprt_pos_printer_linux_driver_v1.2.5.zip
RUN unzip /usr/local/src/hprt_pos_printer_linux_driver_v1.2.5.zip -d /usr/local/src
RUN (cd /usr/local/src/hprt_pos_printer_linux_driver_v1.2.5/ && /bin/sh /usr/local/src/hprt_pos_printer_linux_driver_v1.2.5/install)