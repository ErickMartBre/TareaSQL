create database Colegio

create table School
(
SchoolId int Primary key not null,
SchoolName varchar(50) not null,
Description varchar(1000),
Address varchar(50),
Phone varchar(50),
PostCode varchar(50),
PostAddress varchar(50)
)

create table Class
(
ClassId int primary key not null,
SchoolId int foreign key references School(SchoolId) not null,
ClassName varchar(50) not null,
Description varchar(1000)
)

create table Course
(
CourseId int primary key not null,
CourseName varchar(50) not null,
SchoolId int foreign key references School(SchoolId) not null ,
Description varchar(1000)
)

create table Student
(
StudentId int primary key not null,
ClassId int foreign key references Class(ClassId) not null,
StudentName varchar(100) not null,
StudentNumber varchar(20) not null,
TotalGrade float,
Address varchar(100),
Phone varchar(20),
Email varchar(100),
)

create table Student_Course
(
StudentId int foreign key references Student(StudentId) not null,
CourseId int foreign key references Course(CourseId) not null
)

create table Teacher
(
TeacherId int primary key not null,
SchoolId int foreign key references School(SchoolId) not null,
TeacherName varchar(50) not null,
Description varchar(1000)
)

create table Teacher_Course
(
TeacherId int foreign key references Teacher(TeacherId) not null,
CourseId int foreign key references Course(CourseId) not null
)

create table Grade
(
GradeId int primary key not null,
StudentId int foreign key references Student(StudentId) not null,
CourseId int foreign key references Course(CourseId) not null,
Grade float not null,
Comment varchar(1000)
)

