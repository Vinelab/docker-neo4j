# Neo4j

Neo4j is a highly scalable, robust (fully ACID) native graph database. Neo4j is used in mission-critical apps by thousands of leading, startups, enterprises, and governments around the world.

With the Dockerfile on repository you have a docker neo4j community edition image ready to go.

## Run
`docker run -d --privileged -p 7474:7474 vinelab/neo4j`

Now it is available under `http://localhost:7474/browser` or the relevant docker
IP address instead of `localhost`

## Data Persistency

Neo4j is installed in `/var/lib/neo4j` so the data will reside in `/var/lib/neo4j/data` by default,
in order to persist them on a seperate container or disk mount a volume as such:

`docker run -d --privileged -v /path/to/store:/var/lib/neo4j/data -p 7474:7474 vinelab/neo4j`

## Configuration

Similar to data persistency, configuration can be overridden by overriding any of the files or directories
under `/var/lib/neo4j/conf` or copy them from the running container `docker cp CONTAINER:/var/lib/neo4j/conf/[file] /path/on/machine`
to get a copy of the configuration.
