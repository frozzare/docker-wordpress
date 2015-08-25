# docker-wordpress

Run WordPress in a [Docker](http://docker.com) container easy.

Clone this repo on your production or staging server.
Your Bedrock site should be cloned into `app` directory.

You maybe want to change something in the nginx config in `sites-enabled`, if you running this on mac you should use [docker-machine](https://docs.docker.com/machine/).

You maybe want to [link](https://docs.docker.com/compose/yml/#links) `mysql` container or something else before you build.

When you are ready you should build the Docker containers that exists in `docker-compose.yml`

```
$ docker-compose build
```

Now you can run your docker containers.

```
$ docker-compose run
```

# Normal WordPress structure

* Change last `RUN` in `Dockerfile` to `RUN rm -r /app/wp-content/uploads/`
* Change `volumes` in `docker-compose.yml` to `./app/wp-content/uploads:/app/wp-content/uploads`

# License

MIT © [Fredrik Forsmo](https://github.com/frozzare)
