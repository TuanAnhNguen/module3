create database if not exists m3_c0924l1_jv103;
use m3_c0924l1_jv103;
create table jame (
 `account` varchar(50) primary key,
 `password` varchar(50)
);
create table class (
 id int primary key auto_increment,
 `name` varchar(50)
);
create table room (
 id int primary key auto_increment,
 `name` varchar(50),
 class_id int,
 foreign key(class_id) references class(id)
);
create table student(
 id int primary key auto_increment,
 `name` varchar(50),
 gender boolean,
 birthday date,
 email varchar(100),
 point float,
 `account` varchar(50) unique,
 class_id int,
 foreign key (`account`) references jame(`account`),
 foreign key (class_id) references class(id)
 );
 
create table instructor (
 id int primary key auto_increment,
 `name` varchar(50),
 birthday date,
 salary float
 );
 create table instructor_class (
  instructor_id int,
  class_id int,
  start_time date,
  end_time date,
  primary key (instructor_id,class_id),
  foreign key (instructor_id) references instructor(id),
  foreign key (class_id) references class(id)
 );
 
insert into jame(`account`, `password`) 
values 
('cunn',123), ('chunglh',123),('hoanhh',123),('dungd',123),('huynhtd',123),
('hainm',123),('namtv',123),('hieuvm',123),('kynx',123),('vulm',123);

insert into class(`name`) values ('c1121g1'), ('c1221g1'), ('a0821i1'), ('a0921i1');

insert into room(`name`, class_id) values ('Ken',1), ('Jam',1), ('Ada',2), ('Jimmy',2);

insert into student(`name`, gender, birthday, email, point, `account`, class_id) 
VALUES 
    ('nguyen ngoc cu', 1, '1981-12-12', 'cunn@gmail.com', 8, 'cunn', 1), 
    ('le hai chung', 1, '1981-12-12', 'chunglh@gmail.com', 5, 'chunglh', 1), 
    ('hoang huu hoan', 1, '1990-12-12', 'hoanhh@gmail.com', 6, 'hoanhh', 1),  
    ('dau dung', 1, '1987-12-12', 'dungd@gmail.com', 8, 'dungd', 1), 
    ('ta dinh huynh', 1, '1981-12-12', 'huynhtd@gmail.com', 9, 'huynhtd', 2), 
    ('nguyen minh hai', 1, '1987-12-12', 'hainm@gmail.com', 9, 'hainm', 1), 
    ('tran van nam', 1, '1989-12-12', 'namtv@gmail.com', 4, 'namtv', 2), 
    ('vo minh hieu', 1, '1981-12-12', 'hieuvm@gmail.com', 3, 'hieuvm', 1),  
    ('le xuan ky', 1, '1981-12-12', 'kylx@gmail.com', 7, 'kynx', 2), 
    ('le minh vu', 1, '1981-12-12', 'vu@gmail.com', 7, 'vulm', 1), 
    ('nguyen van a', 1, '1981-12-12', 'anv@gmail.com', 8, null, null), 
    ('tran van b', 1, '1981-12-12', 'btv@gmail.com', 5, null, null);
    
insert into instructor(`name`, birthday) 
values 
    ('tran van chanh', '1985-03-02'), 
    ('tran minh chien', '1985-03-02'), 
    ('vu thanh tien', '1985-03-02'), 
    ('tran van nam', '1989-12-12');

insert into instructor_class(instructor_id, class_id, start_time)
values
	(1,1,null),
	(1,2,null),
	(1,3,null),
	(2,1,null),
	(2,2,null),
	(2,3,null);

-- Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào?--
select s.*, c.name from student as s
join class as c on s.class_id = c.id;

-- Lấy ra thông tin các học viên, và cho biết các học viên đang theo học lớp nào
-- và cả các bạn đã đăng ký nhưng chưa có lớp học?--
select s.*, c.name from student as s
left join class as c on s.class_id = c.id;

-- Lấy thông tin của các học viên tên 'nguyen minh hai'?--
select * from student where name = 'nguyen minh hai';

-- Lấy ra học viên có họ là “nguyen”--
select * from student where name like 'nguyen %';

-- Lấy thông tin của các học viên tên 'hai' hoặc 'huynh’.--
select * from student where name like '% hai' or name like '% huynh';

-- Lấy ra các học viên có điểm lớn hơn 5--
select * from student where point > 5;

--  lấy ra thông tin các học viên có điểm 4,6,8--
select * from student where point in (4,6,8);

-- lấy ra các loại điểm trong bảng student
select distinct point from student;
select point from student group by point; 	

-- Thông kế số lượng học sinh theo từng loại điểm.--
select point, count(point) as so_luong from student group by point; 

-- Thông kế số lượng học sinh theo điểm và điểm phải lớn hơn 5--
select point, count(point) as so_luong from student where point > 5 group by point;

-- Thông kế số lượng học sinh theo điểm lớn hơn 5 và chỉ hiện thị với số lượng>=2--
select point, count(point) as so_luong from student where point > 5 group by point having so_luong >= 2;

-- Lấy ra danh sách học viên của lớp c1121g1 và sắp xếp  học viên theo point giảm dần--
select * from student s
join class c on s.class_id = c.id 
where c.name = 'c1121g1' 
order by s.point desc;

-- Lấy ra danh sách học viên của lớp c1121g1 và sắp xếp  học viên theo point giảm dần theo point,
-- nếu bằng tuổi thì sắp xếp tăng dần theo tên
select * from student s
join class c on s.class_id = c.id 
where c.name = 'c1121g1' 
order by s.point desc, s.name asc;

