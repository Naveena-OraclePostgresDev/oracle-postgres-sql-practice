-- PostgreSQL EXPLAIN and EXPLAIN ANALYZE examples
-- Used to understand how PostgreSQL executes a query

-- Sample query without EXPLAIN
SELECT *
FROM employee
WHERE dept_id = 10;

-- 1. EXPLAIN: shows query execution plan
EXPLAIN
SELECT *
FROM employee
WHERE dept_id = 10;

-- 2. EXPLAIN ANALYZE: shows actual execution time
EXPLAIN ANALYZE
SELECT *
FROM employee
WHERE dept_id = 10;

-- 3. EXPLAIN ANALYZE with index usage
EXPLAIN ANALYZE
SELECT *
FROM employee
WHERE salary > 50000;

-- 4. EXPLAIN ANALYZE with ORDER BY
EXPLAIN ANALYZE
SELECT *
FROM employee
ORDER BY salary DESC;

-- Notes:
-- Seq Scan  -> Full table scan
-- Index Scan -> Index is used
-- Lower cost and time = better performance
