# neo4j Enterprise

Neo4j is a highly scalable, robust (fully ACID) native graph database.

With the Dockerfile on repository you've a docker neo4j enterprise edition image ready to go.

### Setup

1. Execute this command:

	docker run -d --cap-add=SYS_RESOURCE -p 7474:7474 chrishiestand/neo4j-enterprise

2. Access to http://dockerhost:7474 with your browser.
