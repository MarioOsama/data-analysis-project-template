-- 02_load_data.sql
-- Loads the raw CSVs from data/raw/ into the tables.
-- Run from the repo root so the relative paths work:
--   psql -d <database_name> -f sql/02_load_data.sql
-- \copy runs on your machine (no superuser needed), unlike server-side COPY.

\copy example_table FROM 'data/raw/example.csv' WITH (FORMAT csv, HEADER true);

-- Sanity checks: row counts should match the source files
SELECT 'example_table' AS table_name, COUNT(*) AS row_count FROM example_table;
