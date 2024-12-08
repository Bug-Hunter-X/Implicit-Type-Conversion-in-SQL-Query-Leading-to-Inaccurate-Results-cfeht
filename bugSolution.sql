SELECT * FROM employees WHERE CAST(department_id AS UNSIGNED) = CAST('10' AS UNSIGNED) AND salary > 100000;

-- Alternatively, ensure department_id column is always an integer and use:

SELECT * FROM employees WHERE department_id = 10 AND salary > 100000; 

--Adding an index for improved performance:

CREATE INDEX idx_department_id ON employees (department_id); 