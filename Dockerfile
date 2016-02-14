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

RUN apt-get update
RUN apt-get install -y wget 

RUN wget http://feed.flightradar24.com/linux/fr24feed_1.0.13-2_amd64.tgz
RUN tar zxf fr24feed_1.0.13-2_amd64.tgz

ADD fr24feed.ini /etc/fr24feed.ini

WORKDIR fr24feed_amd64

EXPOSE 8080
EXPOSE 8754
EXPOSE 30001
EXPOSE 30002
EXPOSE 30003
EXPOSE 30334

ENTRYPOINT ["./fr24feed"]
