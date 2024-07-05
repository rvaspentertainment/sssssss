FROM python:3.9

RUN apt-get update -qq && apt-get -y install ffmpeg

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip && pip install -U -r requirements.txt

CMD [ "python", "-m", "bot" ]
