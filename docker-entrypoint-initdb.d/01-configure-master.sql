-- Создание роли репликации
CREATE ROLE replicator WITH REPLICATION PASSWORD 'replica_password' LOGIN;

-- Включение логирования репликации
ALTER SYSTEM SET wal_level = 'replica';
ALTER SYSTEM SET max_wal_senders = 10;
ALTER SYSTEM SET max_replication_slots = 5;

-- Перезагрузка конфигурации
SELECT pg_reload_conf();
