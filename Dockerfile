FROM python:latest
 
WORKDIR /
RUN apt-get -y update && \
  apt-get -y install git && \
  git clone https://github.com/voiin/Welin-Search.git && \
  cd Welin-Search && \
  pip install -r requirements.txt && \
  sed -i "s/ultrasecretkey/`openssl rand -hex 16`/g" searx/settings.yml && \
  sed -i 's/bind_address : "127.0.0.1"/bind_address : "0.0.0.0"/g' searx/settings.yml && \
  sed -i 's/language : "en-US"/language : "zh-CN"/g' searx/settings.yml

EXPOSE 8888

CMD python /Welin-Search/searx/webapp.py
