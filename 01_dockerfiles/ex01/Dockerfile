FROM debian

EXPOSE 9987/udp

EXPOSE 30033

EXPOSE 10011

RUN apt-get update && apt-get -y upgrade

RUN adduser --disabled-login --disabled-password --gecos "" teamspeak

RUN apt-get -y install wget bzip2

RUN wget http://dl.4players.de/ts/releases/3.8.0/teamspeak3-server_linux_amd64-3.8.0.tar.bz2

RUN tar -jxvf teamspeak3-server_linux_amd*.tar.bz2

RUN mv teamspeak3-server_linux_amd64 /usr/local/teamspeak

RUN chown -R teamspeak:teamspeak /usr/local/teamspeak

RUN ln -s /usr/local/teamspeak/ts3server_startscript.sh /etc/init.d/teamspeak

RUN touch /usr/local/teamspeak/.ts3server_license_accepted

COPY startServer.sh /

CMD sh startServer.sh
