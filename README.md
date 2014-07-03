# Neo4j

Neo4j is a highly scalable, robust (fully ACID) native graph database. Neo4j is used in mission-critical apps by thousands of leading, startups, enterprises, and governments around the world.

With the Dockerfile on repository you have a docker neo4j community edition image ready to go.

## Run
`docker run -d --privileged -p 7474:7474 vinelab/neo4j`

Now it is available under `http://localhost:7474/browser` or the relevant docker
IP address instead of `localhost`
