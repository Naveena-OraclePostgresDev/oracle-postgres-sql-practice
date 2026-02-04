-- PostgreSQL Index examples
-- Indexes help improve query performance by reducing full table scans

-- 1. Create a simple index on a frequently searched column
CREATE INDEX idx_employee_dept_id
ON employee (dept_id);

-- 2. Create a unique index
CREATE UNIQUE INDEX idx_employee_email
ON employee (email);

-- 3. Composite index (multiple columns)
CREATE INDEX idx_employee_dept_salary
ON employee (dept_id, salary);

-- 4. Index used for WHERE clause filtering
SELECT *
FROM employee
WHERE dept_id = 10;

-- 5. Index used for range queries
SELECT *
FROM employee
WHERE salary BETWEEN 40000 AND 80000;

-- 6. Drop an index (when not needed)
DROP INDEX idx_employee_dept_salary;
