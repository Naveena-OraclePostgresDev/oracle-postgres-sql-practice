-- PostgreSQL CTE (WITH clause) example
-- Find departments with average salary greater than 50,000

WITH dept_avg_salary AS (
    SELECT dept_id,
           AVG(salary) AS avg_salary
    FROM employee
    GROUP BY dept_id
)
SELECT dept_id, avg_salary
FROM dept_avg_salary
WHERE avg_salary > 50000;
