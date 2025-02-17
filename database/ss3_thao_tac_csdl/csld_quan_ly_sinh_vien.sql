create database quan_ly_sinh_vien;
use quan_ly_sinh_vien;

create table class(
         classID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
          className VARCHAR(60) NOT NULL,
          startDate DATETIME NOT NULL,
          Status BIT
);

create table student(
          studentId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
          studentName VARCHAR(30) NOT NULL,
          address VARCHAR(50),
          phone VARCHAR(20),
          Status BIT,
          classId INT NOT NULL,
          FOREIGN KEY (classId) REFERENCES class (classID)
);

create table `subject`(
         subId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
         subName VARCHAR(30) NOT NULL,
         credit TINYINT NOT NULL DEFAULT 1 CHECK ( Credit >= 1 ),
         Status BIT DEFAULT 1
);

create table mark(
        markId INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        subId INT NOT NULL,
        studentId INT NOT NULL,
        mark FLOAT DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
        examTimes TINYINT DEFAULT 1,
        UNIQUE (subId, studentId),
        FOREIGN KEY (subId) REFERENCES `subject` (subId),
        FOREIGN KEY (studentId) REFERENCES student (studentId)
 );
 
insert into class (className, startDate, Status) values
('Class A', '2023-09-01', 1),
('Class B', '2023-09-01', 1),
('Class C', '2023-09-01', 1),
('Class D', '2023-09-01', 1),
('Class E', '2023-09-01', 1);

insert into student (studentName, address, phone, Status, classId) values
('Nguyen Van A', 'Hanoi', '0123456789', 1, 1),
('Tran Thi B', 'Ho Chi Minh', '0987654321', 1, 2),
('Le Van C', 'Da Nang', '0345678901', 1, 3),
('Pham Thi D', 'Hai Phong', '0567890123', 1, 4),
('Hoang Van E', 'Can Tho', '0678901234', 1, 5);

insert into `subject` (subName, credit, Status) values
('Toán', 3, 1),
('Vật lý', 4, 1),
('Hóa học', 3, 1),
('Sinh học', 2, 1),
('Lịch sử', 3, 1);

insert into mark (subId, studentId, mark, examTimes) values
(1, 1, 85, 1),
(2, 2, 90, 1),
(3, 3, 78, 1),
(4, 4, 88, 1),
(5, 5, 92, 1);
 
 -- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’--
 select * from student where name like '% % h%';
 
 -- Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12.--
 select * from class where month(startDate) = 12;
 
 -- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.--
 select * from `subject` where credit between 3 and 5;
 
 -- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.--
 update student set classID = 2 where studentName = 'Hung';
 
 -- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần.--
 -- nếu trùng sắp theo tên tăng dần.--
select s.studentName, sub.subName, m.mark 
from mark m
join student s on m.studentId = s.studentId
join `subject` sub on m.subId = sub.subId
order by m.mark desc, s.studentName asc;