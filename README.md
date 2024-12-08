# Implicit Type Conversion Bug in SQL Query

This repository demonstrates a common, yet easily overlooked, bug in SQL queries involving implicit type conversion. The bug arises when comparing a numeric column with a string literal without explicit type casting. This can lead to unexpected results and performance degradation.

**Problem:**
The query `SELECT * FROM employees WHERE department_id = '10'` might return inaccurate results if the `department_id` column is sometimes stored as a string and sometimes as an integer. MySQL's loose type checking will attempt implicit conversion, possibly leading to incorrect matches or errors.

**Solution:**
The solution involves explicit type casting to ensure consistent data types during the comparison. The corrected query explicitly converts the string literal to an integer, eliminating any ambiguity.

**Further Considerations:**
Indexing the `department_id` column significantly improves query performance, preventing full table scans.

This example highlights the importance of careful data type management in SQL queries to avoid subtle errors and ensure optimal performance.