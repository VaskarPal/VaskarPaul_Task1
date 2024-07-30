CREATE DATABASE college;
USE college;

CREATE TABLE student1(
  s_id int primary key,
  s_name varchar(30)
  );
  
  INSERT INTO student1 (s_id,s_name) VALUES
  (1,"Pankaj"),
  (2,"Nabin");
  
  CREATE TABLE course(
  course_id INT NOT NULL,
  course_name varchar(30),
  s_id INT,
  primary key(course_id),
  foreign key(s_id) references student1(s_id)
  );
  INSERT INTO student1 (course_id, course_name,s_id) VALUES
  (1,"Science",1),
  (2,"History",2);
  
  SELECT * FROM student1;
  SELECT * FROM course;