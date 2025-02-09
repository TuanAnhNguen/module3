create database student_management;
use student_management;

create table Class (
	id int primary key auto_increment,
	`name` varchar(100) not null
);

create table Teacher (
	id int primary key auto_increment,
    `name` varchar(100) not null,
    age int not null,
    country varchar(255) not null
);

insert into Class(`name`) values ('Lớp 1'), ('Lớp 2'), ('Lớp 3');

insert into Teacher(`name`, age, country) values ('Nguyễn Văn A', 20, 'Hà Nội'), ('Nguyễn Văn B', 21, 'Đà Nẵng'), ('Nguyễn Thị C', 20, 'Hà Nam');

select * from Class;

select * from Teacher;