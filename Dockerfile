FROM chrishah/ubuntu-basic:18

MAINTAINER <christoph.hahn@uni-graz.at>

WORKDIR /usr/src

RUN wget https://sourceforge.net/projects/wgs-assembler/files/wgs-assembler/wgs-8.3/wgs-8.3rc2-Linux_amd64.tar.bz2 && \
	tar xjf wgs-8.3rc2-Linux_amd64.tar.bz2

ENV PATH="${PATH}:/usr/src/wgs-8.3rc2/Linux-amd64/bin"

#add user (not really necessary)
RUN adduser --disabled-password --gecos '' ca
USER ca

