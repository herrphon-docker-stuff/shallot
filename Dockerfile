FROM ubuntu

RUN apt-get update \
 && apt-get install -y build-essential \
                       git \
                       libssl-dev
 
RUN mkdir /app \
 && cd /app \
 && git clone https://github.com/apk/katmagic.git \
 && cd katmagic \
 && ./configure \
 && make \
 && cp shallot /usr/bin \
 && cd / \
 && rm -rf /app

CMD "shallot ^test"

