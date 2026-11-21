-- 01_create_tables.sql
-- Creates the schema for this project. Safe to rerun: drops and recreates tables.
-- Run: psql -d <database_name> -f sql/01_create_tables.sql

DROP TABLE IF EXISTS example_table;

CREATE TABLE example_table (
    id          TEXT PRIMARY KEY,
    created_at  TIMESTAMP,
    category    TEXT,
    amount      NUMERIC(12, 2)
);
