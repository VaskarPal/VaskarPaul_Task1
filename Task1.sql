create database rev;
use rev;

create table student(
  s_id int primary key,
  s_name varchar(30),
  s_age int
);


insert into student (s_id,s_name,s_age) values
(1,"Ram",21),
(2,"Shamam",21);

select * from student;


