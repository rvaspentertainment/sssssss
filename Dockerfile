FROM python:3.9

WORKDIR /app

COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
RUN pip3 install ffmpeg-python
RUN apt -qq update && \
    apt -qq install -y git wget pv jq python3-dev ffmpeg mediainfo neofetch && \
    apt-get install wget -y -f && \
    apt-get install fontconfig -y -f

COPY . /app

CMD python3 -m bot
