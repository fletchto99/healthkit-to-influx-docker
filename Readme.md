# Healthkit to Influx Docker

This container ingests data from Health Auto Export (an iOS app) and transforms it to timeseries data to be stored in influxDB 2.0 (via FluxQL).

*Note:* The API is unauthenticated so be sure to run it behind a reverse proxy with some form of authentication if the service is public facing.

## Usage

```
docker create \
  --name=healthkit \
  -e PGID=<gid> -e PUID=<uid>  \
  -e INFLUX_HOST=<influx host> \
  -e INFLUX_PORT=<influx port> \
  -e INFLUX_ORG=<influx org> \
  -e INFLUX_BUCKET=<influx bucket> \
  -e INFLUX_TOKEN=<influx token> \
  -p 5353:5353 \
  fletchto99/healthkit-to-influx
```

## Parameters
* `-p 8080` - The port to run the container on
* `-e INFLUX_HOST` - The host which influx 2.0 is running on
* `-e INFLUX_PORT` - The port which influx 2.0 is running on 
* `-e INFLUX_ORG` - The influx org which you wish to send data to
* `-e INFLUX_BUCKET` - The influx bucket which you wish to send data to
* `-e INFLUX_TOKEN` - The token, created in influx, which has *write* access to the `INFLUX_BUCKET`
