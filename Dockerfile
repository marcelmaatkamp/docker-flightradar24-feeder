FROM marcelmaatkamp/docker-gnuradio-dump1090

# To sign up for the first time and acquire a flightradar24 key:  
#  $ docker run -ti marcelmaatkamp/flightradar24-feeder --signup 

# After that start the feeder with the key:  
#  $ docker run -d \ 
#    --name flightradar_feeder \
#    --restart=always \
#    --privileged \
#    -p 8080:8080 \
#    -p 8754:8754 \
#    -p 30001:30001 \
#    -p 30002:30002 \
#    -p 30003:30003 \
#    -p 30334:30334 \
#    marcelmaatkamp/flightradar24-feeder \
#      --fr24key=<flightradar24 signup key>

RUN \
 apt-get install -y \
  wget \
  build-essential &&\
 rm -rf /var/lib/apt/lists/*

ENV FLIGHTRADAR_VERSION 1.0.34-0
RUN \
 wget https://repo-feed.flightradar24.com/linux_x86_64_binaries/fr24feed_${FLIGHTRADAR_VERSION}_amd64.tgz &&\
 tar zxf fr24feed_${FLIGHTRADAR_VERSION}_amd64.tgz &&\
 export LD_LIBRARY_PATH=/usr/local/lib64/:$LD_LIBRARY_PATH

ADD fr24feed.ini /etc/fr24feed.ini
WORKDIR fr24feed_amd64

EXPOSE 8080 8754 30001 30002 30003 30334

RUN \
 ln -s \
  /gnuradio/dump1090/dump1090 \
  /usr/local/bin/dump1090

ENTRYPOINT ["./fr24feed"]
