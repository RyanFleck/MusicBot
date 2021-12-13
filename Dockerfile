FROM python:3

RUN mkdir -p /app
WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y ffmpeg
RUN pip install -r requirements.txt

CMD [ "python3", "main.py" ]

