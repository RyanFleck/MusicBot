FROM ubuntu:22.04 

ENV TZ=Etc/UTC
ENV DEBIAN_FRONTEND=noninteractive 

RUN mkdir -p /app
WORKDIR /app

COPY main.py .
COPY requirements.txt .

RUN apt-get update 
RUN apt-get install -y apt-utils software-properties-common
RUN apt-get install -y python3 python3-pip
RUN apt-get install -y ffmpeg libsodium-dev libopus-dev unzip
RUN python3 -m pip install -U --upgrade pip
RUN python3 -m pip install -U -r requirements.txt

CMD [ "python3", "main.py" ]

