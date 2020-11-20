
--1st Query
SELECT * FROM employees;

SELECT * FROM salaries;
SELECT employees.employeenumber, employees.lastname, employees.firstname, employees.sex, salaries.salary
FROM employees
JOIN salaries on employees.employeenumber = salaries.employeenumber;

--2nd Query
SELECT * FROM employees;
SELECT employees.firstname, employees.lastname, employees.hiredate
FROM employees
WHERE hiredate LIKE '%1986%'

--3rd Query
SELECT * FROM department_manager;
SELECT * FROM departments;
SELECT * FROM employees;
SELECT department_manager.deptnumber, departments.deptname,department_manager.employeenumber, employees.lastname, employees.firstname
FROM department_manager 
JOIN departments on department_manager.deptnumber = departments.deptnumber
JOIN employees on department_manager.employeenumber = employees.employeenumber;

--4th Query 
SELECT * FROM employees;
SELECT * FROM department_employees; 
SELECT * FROM departments;
SELECT employees.employeenumber, employees.lastname, employees.firstname, departments.deptname
FROM employees
jOIN department_employees on employees.employeenumber = department_employees.employeenumber
JOIN departments on department_employees.deptnumber = departments.deptnumber;

--5th Query
SELECT * FROM employees;
SELECT firstname, lastname, sex
FROM employees
WHERE
firstname = 'Hercules' AND
lastname LIKE 'B%';

--6th Query
SELECT * FROM employees;
SELECT * FROM department_employees; 
SELECT * FROM departments;
SELECT employees.employeenumber,employees.lastname, employees.firstname,departments.deptname
FROM employees
JOIN department_employees on employees.employeenumber = department_employees.employeenumber
JOIN departments on department_employees.deptnumber = departments.deptnumber
WHERE departments.deptname = 'Sales';

--7th Query
SELECT * FROM employees;
SELECT * FROM department_employees; 
SELECT * FROM departments;
SELECT employees.employeenumber,employees.lastname, employees.firstname,departments.deptname
FROM employees
JOIN department_employees on employees.employeenumber = department_employees.employeenumber
JOIN departments on department_employees.deptnumber = departments.deptnumber
WHERE departments.deptname IN ( 'Sales', 'Development') ;

--8th Query 

SELECT * FROM employees;
SELECT lastname, COUNT(*)
FROM employees
GROUP BY lastname
ORDER by COUNT(*) DESC;

