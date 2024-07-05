FROM python:3.9.18



WORKDIR /usr/src/app



COPY . .



RUN pip install -r requirements.txt



# Install ffmpeg using apt



RUN apt update && apt install -y ffmpeg



CMD [ "python3", "-m", "bot" ]
