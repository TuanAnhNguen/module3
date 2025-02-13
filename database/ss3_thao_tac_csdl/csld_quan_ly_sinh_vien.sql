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