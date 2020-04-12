FROM ubuntu:19.10
MAINTAINER James Lloyd <james.lloyd@gmail.com>

RUN groupadd dropbox
RUN useradd -m -d /dropbox -s /usr/sbin/nologin -g dropbox dropbox
WORKDIR /dropbox
RUN apt-get update -qqy
RUN apt-get install -qqy wget libc6 libglapi-mesa libxdamage1 libxfixes3 libxcb-glx0 libxcb-dri2-0 libxcb-dri3-0 libxcb-present0 libxcb-sync1 libxshmfence1 libxxf86vm1 libgtk2.0-dev
RUN wget https://www.dropbox.com/download?plat=lnx.x86_64 -O dropbox-linux.tar.gz
RUN mkdir /opt/dropbox
RUN tar xvf dropbox-linux.tar.gz --strip 1 -C /opt/dropbox
RUN mkdir /root/Dropbox

VOLUME ["/root/Dropbox"]
EXPOSE 17500
ENTRYPOINT ["/opt/dropbox/dropboxd"]
