#!/bin/bash

pg_ctl -D $PGDATA stop
rm -rf $PGDATA/*
pg_basebackup -h postgres-master -D $PGDATA -U replicator -P -v -R --slot=replica_slot$REPLICA_ID
echo "host replication replicator postgres-master md5" >> $PGDATA/pg_hba.conf
pg_ctl -D $PGDATA start