FROM ubuntu:18.04
MAINTAINER tts  "ttts"

RUN apt update && apt install cmake build-essential -y
RUN git clone https://github.com/grpc/grpc.git && cd grpc && git submodule update --init --recursive && cmake -H. -Bbuild && cmake --build build  -j`nproc`
ENTRYPOINT ["echo hello"]
