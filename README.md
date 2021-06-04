# metabase-docker-multiplatform

This is a repo to store a small Dockerfile I sometimes use to build an run [Metabase](https://github.com/metabase/metabase) on ARM machines until [support](https://github.com/metabase/metabase/issues/13119) for this architecture is officially added to the Docker image provided by the Metabase-Team. It uses [Amazon Corretto 11 OpenJDK](https://hub.docker.com/_/amazoncorretto) and fetches the latest Metabase JAR using https://downloads.metabase.com/latest/metabase.jar.

I use Portainer to create images based on this Dockerfile, but it's just as easy using the CLI. Clone the repository into a directory of your choice and run these commands (add/remove/replace the environment variables with values relevant to your environment - a full list is available in the [Metabase docs](https://www.metabase.com/docs/latest/operations-guide/environment-variables.html)):

```
docker build --tag that-one-tom/metabase .
docker run --detach --publish 3000:3000 --env MB_DB_DBNAME=metabase --env MB_DB_HOST=pg --env MB_DB_PASS=secret --env MB_DB_PORT=5432 --env MB_DB_TYPE=postgres --env MB_DB_USER=metabase that-one-tom/metabase
```

This builds the image, starts a container in the background and makes the Metabase container port 3000 available to the host.
