FROM python:3

RUN mkdir -p /app
WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y ffmpeg libopus-dev libffi-dev
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -Ur requirements.txt

CMD [ "python3", "main.py" ]

