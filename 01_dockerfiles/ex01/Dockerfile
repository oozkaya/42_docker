FROM debian
RUN apt-get update -y && apt-get upgrade -y && \
    apt-get install bzip2 wget -y && \
    wget http://dl.4players.de/ts/releases/3.3.1/teamspeak3-server_linux_amd64-3.3.1.tar.bz2 && \
    tar xjvf teamspeak3-server_linux_amd64-3.3.1.tar.bz2
EXPOSE 9987/udp 10011 30033
ENV TS3SERVER_LICENSE=accept
CMD ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]

#docker build -t ts3-server ~/docker/01_dockerfiles/ex01
#docker run -it --name ts3-test -d -p=9987:9987/udp  -p=10011:10011 -p=30033:30033 ts3-server
#docker logs -f ts3-test
