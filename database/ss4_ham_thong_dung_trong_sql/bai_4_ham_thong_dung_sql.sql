use quan_ly_sinh_vien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.-- 
select * from `subject`
where credit = (select max(credit) from `subject`);
 
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.--
select * from `subject` s
join mark m on s.subId = m.subId
where m.mark = (select max(mark) from mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên,
-- xếp hạng theo thứ tự điểm giảm dần--
select s.studentId, s.studentName, s.address, s.phone, s.classId, avg(m.mark) as avg_mark 
from student s
join mark m on s.studentId = m.studentId
group by s.studentId, s.studentName, s.address, s.phone, s.classId
order by avg_mark desc;
