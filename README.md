# docker-flight24-feeder

Feed the data from https://registry.hub.docker.com/u/marcelmaatkamp/docker-gnuradio-dump1090 to http://www.flightradar24.com and get a premium subscription

To sign up for the frst time and aquire a flightradar24 key use:
```
 $ docker run -ti marcelmaatkamp/flightradar24-feeder --signup
```

After that start the feeder: 
```
 $ docker run --privileged -p 8754:8754 marcelmaatkamp/flightradar24-feeder --fr24key=<key>
```
