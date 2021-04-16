#!/bin/bash

docker run -d --name pg-perf -e POSTGRES_PASSWORD=password -e POSTGRES_USER=perftest -e POSTGRES_DB=perftest -p 5432:5432 postgres:9.6

docker run -d -p 8080:80 -e PGADMIN_DEFAULT_EMAIL=wschmidt@seic.com -e PGADMIN_DEFAULT_PASSWORD=password dpage/pgadmin4:5.1
