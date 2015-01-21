FROM debian:jessie
MAINTAINER John R. Ray <jray@shadow-soft.com>

RUN apt-get update && apt-get install -y\
  apt-utils\
  wget\	
  && wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -\
  && echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list\
  && apt-get update && apt-get install -y\
  google-chrome-stable\
  && apt-get clean

RUN useradd -u 1000 -m dev

USER dev 

CMD ["/usr/bin/google-chrome", "-no-sandbox", "-user-data-dir"]
