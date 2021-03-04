FROM ubuntu:18.04
MAINTAINER ubuntu  "ubuntu"

RUN apt update && apt install cmake build-essential git -y
RUN git clone https://github.com/grpc/grpc.git && cd grpc && git submodule update --init --recursive && cmake -H. -Bbuild && cd build && make  -j`nproc`
ENTRYPOINT ["uname -a"]
