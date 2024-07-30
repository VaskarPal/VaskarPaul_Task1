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