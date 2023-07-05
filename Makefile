genup = docker-compose -f $(1) up -d
gendown = docker-compose -f $(1) down

mysql-up:
	${call genup,docker-mysqladmin.yaml}

mysql-down:
	${call gendown,docker-mysqladmin.yaml}

mysqlm-up:
	${call genup,docker-mysql-adminer.yaml}

mysqlm-down:
	${call gendown,docker-mysql-adminer.yaml}

pgsql-up:
	${call genup,docker-pgadmin.yaml}

pgsql-down:
	${call gendown,docker-pgadmin.yaml}

pgsqlm-up:
	${call genup,docker-pg-adminer.yaml}

pgsqlm-down:
	${call gendown,docker-pg-adminer.yaml}

mongo-up:
	${call genup,docker-mongodb-express.yaml}

mongo-down:
	${call gendown,docker-mongodb-express.yaml}

redis-up:
	${call genup,docker-redis.yaml}

redis-down:
	${call gendown,docker-redis.yaml}

portainer-up:
	${call genup,dockerportainer.yaml}

portainer-down:
	${call gendown,dockerportainer.yaml}
