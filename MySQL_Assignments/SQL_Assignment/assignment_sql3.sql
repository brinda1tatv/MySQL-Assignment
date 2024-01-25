1.SELECT 
    department.dept_name,
    MAX(employee.salary),
    MAX(employee.emp_name)
FROM
    employee
        INNER JOIN
    department ON employee.dept_id = department.dept_id
GROUP BY employee.dept_id;


2.SELECT 
    department.dept_name, COUNT(employee.dept_id) AS employees
FROM
    department
        LEFT JOIN
    employee ON employee.dept_id = department.dept_id
GROUP BY department.dept_id
HAVING COUNT(employee.dept_id) < 3;


3.SELECT 
    department.dept_name, COUNT(employee.dept_id) AS employees
FROM
    department
        LEFT JOIN
    employee ON employee.dept_id = department.dept_id
GROUP BY department.dept_id;


4.SELECT 
    department.dept_name, SUM(employee.salary) AS employees
FROM
    department
        LEFT JOIN
    employee ON employee.dept_id = department.dept_id
GROUP BY department.dept_id;
