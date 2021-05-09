create table student
(
std_id int,
std_name varchar(30),
std_age int,
 int,
);

insert into student values(1,'aa',23,10)
insert into student values(2,'bb',25,20)
insert into student values(4,'dd',28,40,'c programming');

alter table student add course_name varchar(20);
-------------------------------------------------
update student
set course_name='c++'
where std_id=2;
update student
set course_name='machine learning'
where std_id=3;

update student
set course_name='c programming'
where std_id=4

delete student
where std_id=4
---------------------------------------------------------
select * from student;
select * from course;
----------------------------------------------------------

create table course
(
course_id int,
course_name varchar(30),
course_fee decimal(6,2),
);
insert into course values(10,'sql server',1999);
insert into course values(20,'python',3999)
insert into course values(30,'machine learning',9999)
insert into course values(50,'science',8999)
insert into course values(60,'c++',2999)
-------------------------------------------------------------------------------------------
select student.course_id,course.course_id 
from student
inner join course on student.course_id=course.course_id;

------------------------------------------------------------------
select student.course_name,course.course_name
from student
inner join course
on student.course_name=course.course_name;

---------------------------------------------------
select student.course_name,course.course_name
from student
inner join course
on student.course_name=course.course_id

-------------------------------------------------
select *
from student
left outer join course
on student.course_name=course.course_name;










