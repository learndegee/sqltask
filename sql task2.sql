create database student_db;
create schema student_sh;
use student_sh;

create table student(
student_id int primary key, 
name varchar(25), 
course_id int);

select * from student; 

insert into student values(1,"Arun",101),(2,"priya",102),(3,"ravi",101),(4,"meena",103),(5,"karthik",null);

create table depts(course_id int, course_name varchar(50), fees int);

insert into depts values(101,"python",5000),(102,"sql",4000),(103,"java",6000),(104,"excel",3000);

select * from depts;

select s.name, d.course_name 
from student s inner join depts d
on s.course_id=d.course_id;

select s.name, d.course_name 
from student s left join depts d
on s.course_id=d.course_id;

select s.name, d.course_name 
from student s right join depts d
on s.course_id=d.course_id;

select s.name, d.course_name 
from student s left join depts d
on s.course_id=d.course_id
union
select s.name, d.course_name 
from student s right join depts d
on s.course_id=d.course_id;

select s.name, d.course_name 
from student s cross join depts d;