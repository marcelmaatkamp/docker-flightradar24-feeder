# docker-flightradar24-feeder

Feed the ADS/B data from a $10 RTLSDR dongle to http://flightradar24.com for a premium subscription

To sign up for the frrst time and acquire a flightradar24 key:
```
 $ docker run -ti marcelmaatkamp/flightradar24-feeder --signup
```

After that start the feeder with the key: 
```
 $ docker run -d \
   --name flightradar_feeder \
   --restart=always \
   --privileged \
   -p 8754:8754 \
   marcelmaatkamp/flightradar24-feeder --fr24key=<flightradar24 signup key>
```

![flightradar feed][https://04a27ff1-a-62cb3a1a-s-sites.googlegroups.com/site/marcelmaatkamp/home/share-your-ads-b-data-for-a-premium-subscription-of-http-www-flightradar24-com/Schermafbeelding%202015-04-01%20om%2016.45.57.png?attachauth=ANoY7cpuyeHGoF6pZjISXX9YlnknKWggI41YOdpNbPJUOzKCgBOec2uFDKjFgWQdRBED4kpbiDUgdqu0JMmzOniDuoC9-EQULeI2fes4kQID-hkinnkfUlqAN9OEsBmQd7rIdyEqstJORp3bQVEPWvaPBQpyz6StQaj4P5zKZgtgDnofkng8ENCZNjx1am_bGROen_us8jAmLIFxvcAvBn3ctpR35DU2Lodu40Z6WaWIxKfPWa0sQIGvHfYqSMfUxNKUELyxdTpQZeWHDeQZdRjZqimceswQlvkzAj9MYj8p7VXB0ZOshmAEo881mafAR-kw7flcRQJ_bqik5n-KUCO0ETgJ7Oyt-gjYOAI44Cc12TlNb84ehglXlBx4muaGcXm_jPgQ_85m&attredirects=0)
