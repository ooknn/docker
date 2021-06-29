FROM ubuntu:18.04
MAINTAINER ubuntu  "ubuntu"

#RUN apt update && apt install cmake build-essential git -y
#RUN git clone https://github.com/grpc/grpc.git && cd grpc && git submodule update --init --recursive && cmake -H. -Bbuild && cd build && make  -j`nproc`
RUN uname -a
RUN cat /etc/os-release
RUN set -x
RUN apt update
RUN apt-get install -y wget git curl software-properties-common libsqlite3-dev build-essential snap
RUN snap install cmake  --classic
RUN add-apt-repository -y ppa:mhier/libboost-latest
RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test
RUN apt update
RUN apt install -y cmake  gcc-11 g++-11 libboost1.74-dev
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-11 11
RUN update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-11 11
RUN gcc --version
RUN g++ --version
RUN cmake --version

ENTRYPOINT ["uname -a"]
