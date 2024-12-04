-- Создание слотов репликации для каждой реплики
SELECT * FROM pg_create_physical_replication_slot('replica_slot1');
SELECT * FROM pg_create_physical_replication_slot('replica_slot2');
