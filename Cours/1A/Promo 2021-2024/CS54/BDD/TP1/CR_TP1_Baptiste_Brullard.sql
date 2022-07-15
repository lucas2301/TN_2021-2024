-- Baptiste BRULLARD 
-- Compte-rendu TP1-CS54 | BDD

-- 1)
SELECT last_name 
FROM employees 
WHERE salary > 10000
-- 15 lignes.

-- 2)
SELECT last_name 
FROM employees 
WHERE hire_date BETWEEN '17-02-1997' AND '30-10-1997'
-- 0 lignes.

-- 3)
SELECT last_name 
FROM employees 
WHERE LOWER(last_name) LIKE 'J%'
-- 2 lignes.

-- 4)
SELECT last_name 
FROM employees 
WHERE LOWER(last_name) LIKE '%a%a%'
-- 10 lignes.

-- 5)
SELECT last_name 
FROM employees 
WHERE manager_id = 114
-- 2 lignes.

-- 6)
SELECT department_name 
FROM departments 
WHERE manager_id = 114 OR manager_id IS NULL;
-- 17 lignes.

-- 7)
SELECT department_name 
FROM departments 
WHERE location_id != (SELECT location_id FROM locations 
		      WHERE city LIKE 'Seattle')
-- 6 lignes.

-- 8)
SELECT last_name, CASE 
		WHEN commission_pct::TEXT ISNULL 
		THEN 'Pas de commission' 
		ELSE commission_pct::TEXT
	END 
FROM employees
ORDER BY last_name;
-- 104 lignes.

-- 9)
SELECT INITCAP(last_name)
FROM employees
WHERE salary > (SELECT AVG(salary) 
				FROM employees)
ORDER BY INITCAP(last_name) ASC;
-- 49 lignes.

-- 10)
SELECT last_name
FROM employees
WHERE employee_id IN (SELECT manager_id
                      FROM employees
                      WHERE manager_id IS NOT NULL);
-- 18 lignes.

-- 11)
SELECT department_name FROM departments
WHERE department_id NOT IN (SELECT distinct(department_id) 
			    			FROM employees 
                            WHERE department_id IS NOT NULL);
-- 16 lignes.

-- 12)
SELECT j.job_title, COUNT(e.job_id)
FROM jobs j
INNER JOIN employees e ON j.job_id = e.job_id
GROUP BY j.job_title
-- 19 lignes.


-- 13)
SELECT e.last_name, l.street_address, l.city 
FROM employees e
INNER JOIN departments d ON e.department_id = d.department_id
INNER JOIN locations l ON l.location_id = d.location_id
WHERE e.hire_date < (SELECT hire_date FROM employees WHERE last_name = 'Weiss')
-- 21 lignes.

-- 14)
SELECT j.job_title, COUNT(e.job_id) 
FROM jobs j
INNER JOIN employees e ON j.job_id = e.job_id
WHERE e.salary BETWEEN j.min_salary AND j.max_salary
GROUP BY j.job_title
ORDER BY j.job_title ASC
-- 19 lignes.

-- 15)
SELECT j.job_title, SUM(e.salary) 
FROM JOBS j
INNER JOIN EMPLOYEES e ON j.job_id = e.job_id
GROUP BY j.job_title
HAVING SUM(e.salary) < 10000
ORDER BY j.job_title ASC
-- 5 lignes.
