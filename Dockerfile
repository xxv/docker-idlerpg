FROM perl:5.20

COPY deployidlerpg.sh /tmp/deployidlerpg.sh
COPY dedaemonize.patch /tmp/dedaemonize.patch
RUN chmod 755 /tmp/deployidlerpg.sh
RUN /tmp/deployidlerpg.sh
RUN groupadd -r idlerpg && useradd -r -m -g idlerpg idlerpg
USER idlerpg
WORKDIR /idlerpg
CMD ["perl", "/usr/src/idlerpg/bot.v3.1.2.pl"]
