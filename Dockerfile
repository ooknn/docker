FROM arm32v7/ubuntu:18.04
MAINTAINER tts  "ttts"

RUN apt update && apt install cmake build-essential git -y
RUN git clone https://github.com/grpc/grpc.git && cd grpc && git submodule update --init --recursive && cmake -H. -Bbuild && cd build && make  -j`nproc`
ENTRYPOINT ["uname -a"]
