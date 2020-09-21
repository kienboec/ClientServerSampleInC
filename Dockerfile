FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Vienna
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN    apt-get update \
    && apt-get install -y --no-install-recommends \
            apt-utils \
            apt-transport-https \
            ca-certificates \
            dirmngr \
            make \
            \
            wget \
            inotify-tools \
            vim \
			build-essential \
			googletest \
			libgtest-dev \
			libldap2-dev \
			cmake \
			net-tools \
			lsof \
			tcpdump

RUN			cd /usr/src/googletest && cmake . && cmake --build . --target install

RUN wget -O - "https://github.com/DynamoRIO/drmemory/releases/download/release_2.3.18351/DrMemory-Linux-2.3.18351.tar.gz" | tar -xz -C /

WORKDIR /src

CMD /bin/bash

