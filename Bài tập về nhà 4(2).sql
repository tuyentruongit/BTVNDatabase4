select * from Person;
-- Lấy danh sách các quốc gia duy nhất.
select distinct(country) from Person;
-- Sắp xếp danh sách người theo tên đầy đủ (fullname) theo thứ tự tăng dần.
select * from Person order by fullname asc;
-- Sắp xếp danh sách người theo nghề nghiệp (job) theo thứ tự giảm dần.
select * from Person order by job desc;
-- Lấy danh sách các nghề nghiệp (job) duy nhất mà người trong bảng đang làm.
select distinct(job) from Person ;
-- Lấy tổng số người theo từng quốc gia và sắp xếp theo số lượng người giảm dần.
select count(*),country from Person group by country order by count(*) asc;
-- Tính tổng lương (salary) của tất cả người trong bảng.
select sum(salary) as total from Person ;
-- Tính tổng lương trung bình của người theo từng nghề nghiệp (job) và sắp xếp theo lương trung bình tăng dần.
select job,avg(salary) as Average from Person group by job order by Average asc ;
-- Lấy ra người có lương (salary) lớn hơn 50000 và ngày sinh (birthday) nằm trong khoảng ‘1990-01-01’ đến ‘1995-12-31’.
select * from Person
where salary > 50000 and birthday between'1990-01-01'and'1995-12-31' ;
-- Lấy ra người có lương (salary) lớn hơn 60000 và nghề nghiệp (job) là ‘Developer’ hoặc ‘Engineer’.
select * from Person
where salary > 60000 and job = 'Developer' or job = 'Engineer' ;
-- Lấy ra danh sách các nghề nghiệp (job) duy nhất mà có ít nhất 3 người làm.
select count(*),job  from Person group by job having count(*)>3;
-- Lấy ra người nam (gender = ‘Male’) có lương (salary) cao nhất.
select count(*),gender from Person group by gender ;
-- Lấy ra người nữ (gender = ‘Female’) có lương (salary) thấp nhất.
select * from Person where gender ='Female' order by salary asc limit 1;
-- Lấy danh sách người (không trùng lặp) theo thứ tự tên đầy đủ tăng dần.
select distinct(fullname) from Person order by  fullname asc;
-- Đếm số người sinh vào các tháng khác nhau và sắp xếp theo thứ tự số lượng tăng dần.
select count(*)as quantity_person  ,(month(birthday)) as birth_month from Person
group by month(birthday)
order by quantity_person ASC;

