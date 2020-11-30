FROM postgres:latest

COPY init_dbs.sh /docker-entrypoint-initdb.d

RUN chmod a+x /docker-entrypoint-initdb.d/init_dbs.sh 
