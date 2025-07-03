FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget screen libfuse2 && \
    useradd -ms /bin/bash honeygain

USER honeygain
WORKDIR /home/honeygain

RUN wget https://github.com/honeygain/honeygain-linux/releases/latest/download/honeygain-x86_64.AppImage && \
    chmod +x honeygain-x86_64.AppImage

CMD ["screen", "-dmS", "hg", "./honeygain-x86_64.AppImage", "-tou-accept", "-email", "${HG_EMAIL}", "-pass", "${HG_PASS}"]
