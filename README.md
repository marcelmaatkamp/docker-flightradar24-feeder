# docker-flightradar24-feeder

Feed the ADS/B data from a $10 RTLSDR dongle to http://flightradar24.com for a premium subscription

To sign up for the frst time and aquire a flightradar24 key use:
```
 $ docker run -ti marcelmaatkamp/flightradar24-feeder --signup
```

After that start the feeder: 
```
 $ docker run -d \
   --name flightradar_feeder \
   --restart=always \
   --privileged \
   -p 8754:8754 \
   marcelmaatkamp/flightradar24-feeder --fr24key=<flightradar24 signup key>
```
