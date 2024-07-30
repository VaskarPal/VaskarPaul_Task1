create database task_2;
use task_2;

create table employees (
employeeid int primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(100) not null unique,
salary int not null,
departmentid int 
);

create table departments (
departmentid int primary key,
departmentname varchar(50) not null
);

create table projects (
projectid int primary key,
projectname varchar(100) not null,
departmentid int,
constraint fk_project_department foreign key(departmentid) references departments(departmentid)
);

insert into departments (departmentid,departmentname) values
(1,'Marketing'),
(2,'Sales'),
(3,'IT'),
(4,'Finance'),
(5,'HR');

insert into employees (employeeid,firstname,lastname,email,salary,departmentid) values
(1,"John","Doe","john.doe@company.com",60000,1),
(2,"Jane","Smith","jane.smith@company.com",75000,2),
(3,"Michael","Johnson","michael.johnson@company.com",85000,3),
(4,"Emily","Williams","emily.williams@company.com",72000,4),
(5,"David","Brown","david.brown@company.com",65000,5),
(6,"Sarah","Davis","sarah.davis@company.com",90000,6);

insert into projects (projectid,projectname,departmentid) values
(1,'Project A',1),
(2,'Project B',2),
(3,'Project C',3),
(4,'Project D',4),
(5,'Project E',5);

select *from employees;
select *from departments;
select *from projects;

-- Practice questions 

ALTER TABLE employees
ADD CONSTRAINT chk_salary1 CHECK (salary > 0);

ALTER TABLE employees
ADD CONSTRAINT uq_employees_email1 UNIQUE (email);

ALTER TABLE projects
ADD CONSTRAINT fk_project_department1 
FOREIGN KEY (departmentid) REFERENCES departments(departmentid);

INSERT INTO employees (employeeid, firstname, lastname, email, salary, departmentid)
VALUES (13, 'Ankit', 'Naharia', 'ankitnaharia.te20@bmsce.ac.in',50000,13);

INSERT INTO employees (employeeid, firstname, lastname, email, salary, departmentid)
VALUES (14, 'Duplicate', 'Email', 'john.doe@company.com', 60000, 1);

UPDATE employees SET departmentid = 13 WHERE employeeid = 1;


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary DESC
LIMIT 3;
-- Top 3 employees with the lowest salaries:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary ASC
LIMIT 3;
-- Employee with the 2nd highest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- Employee with the 2nd lowest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary ASC
LIMIT 1 OFFSET 1;

-- Employee with the 3rd highest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary DESC
LIMIT 1 OFFSET 2;

-- Employee with the 3rd lowest salary:


SELECT first_name, last_name, salary
FROM your_table
ORDER BY salary ASC
LIMIT 1 OFFSET 2;

-- Employees with salary between 65000 and 80000, ordered by first name in descending order, limited to 3 rows:

SELECT first_name, last_name, email, salary
FROM your_table
WHERE salary BETWEEN 65000 AND 80000
ORDER BY first_name DESC
LIMIT 3;
