-- 03_analysis.sql
-- One query per business question. Keep the question as a comment above each query
-- and note the answer you found, so the file reads like a report.

-- Q1: [Business question 1]
-- Answer: [short finding with a number]
SELECT
    DATE_TRUNC('month', created_at) AS month,
    SUM(amount)                     AS revenue
FROM example_table
GROUP BY 1
ORDER BY 1;
