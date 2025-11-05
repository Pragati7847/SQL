CREATE DATABASE Employee;

USE Employee;

CREATE TABLE EmployeeDetail(
EmployeeID int primary key,
name VARCHAR(50),
Lastname text,
Salary int,
JoiningDate DATE,
Department VARCHAR(20),
Gender VARCHAR(50)
);


INSERT INTO EmployeeDetail
(EmployeeID, name, Lastname, Salary, JoiningDate,  Department, Gender)
VALUES
(1,"Vikas", "AHlawat", 60000.00, '2013-02-15',"IT", "Male"),
(2, "nikita", "Jain", 530000.00, '2014-01-09', "HR",'Female'),
(3, "Ashish", "Kumar", 100000.00,'2014-01-09', "IT", 'Male'),
(4, "Nikhil", "Sharma", 480000.00,'2014-01-09', "HR", 'Male'),
(5, "anish", "Kadian", 50000.00,'2014-01-09', "Payrol", 'Male');




SELECT * FROM EmployeeDetail;
SELECT name FROM EmployeeDetail;
SELECT UPPER(name) AS name FROM EmployeeDetail;
SELECT LOWER(name) AS name FROM EmployeeDetail;
SELECT concat(name,' ',LastName) AS Name FROM EmployeeDetail;
SELECT * FROM EmployeeDetail WHERE name = "Vikas";
SELECT * FROM EmployeeDetail WHERE name like 'a%';
SELECT * FROM EmployeeDetail WHERE name like '%k%';
SELECT * FROM EmployeeDetail WHERE name like '%h';
SELECT * FROM EmployeeDetail WHERE name BETWEEN 'A' AND 'P';
SELECT * FROM EmployeeDetail WHERE name NOT BETWEEN 'A' AND 'p';
SELECT * FROM EmployeeDetail WHERE Gender like'__le';
SELECT * FROM EmployeeDetail WHERE name like 'a__' AND length(name) = 5;
SELECT * FROM EmployeeDetail WHERE name like '%[%]%';
SELECT DISTINCT(Department) FROM EmployeeDetail;
SELECT MAX(Salary) FROM EmployeeDetail;
SELECT MIN(Salary) FROM EmployeeDetail;
SELECT DATE_FORMAT(JoiningDate, '%d %b %Y') AS formatted_date FROM EmployeeDetail;
SELECT DATE_FORMAT(JoiningDate, '%Y/%m/%d') AS formatted_date FROM EmployeeDetail;
SELECT DATE_FORMAT(JoiningDate, '%H:%i:%s') AS formatted_time FROM EmployeeDetail;
SELECT YEAR(JoiningDate) AS Joining_year FROM EmployeeDetail;
SELECT MONTH(JoiningDate) AS Joining_month FROM EmployeeDetail;
SELECT curdate() AS system_date;
SELECT utc_timestamp() AS utc_datetime;
SELECT JoiningDate FROM EmployeeDetail;
SELECT name (CURDATE()) AS current_date, JoiningDate, timestamp(month, JoiningDate, CURDATE()) AS Months_difference FROM EmployeeDetail;
SELECT name, curdate() AS [current_date()],DATEDIFF(MM, JoiningDate, GETDATE()) AS Total months FROM EmployeeDetail;
SELECT * FROM EmployeeDetail WHERE YEAR(JoiningDate) = '2013';
SELECT * FROM EmployeeDetail WHERE MONTH(JoiningDate) = '1';
SELECT * FROM EmployeeDetail WHERE JoiningDate BETWEEN '2013-01-01' AND '2013-12-01';
SELECT count(*) FROM EmployeeDetail;
SELECT * FROM EmployeeDetail LIMIT 1;
SELECT * FROM EmployeeDetail WHERE name IN('Vikas', 'Ashish','Nikhil');
SELECT * FROM EmployeeDetail WHERE name NOT IN('Vikas', 'Ashish', 'Nikhil');
SELECT rtrim(name) AS name FROM EmployeeDetail;
SELECT ltrim(name) AS name FROM EmployeeDetail;
SELECT name, CASE WHEN Gender = 'Male' THEN 'M' WHEN Gender = 'Female' THEN 'F' END AS Gender FROM EmployeeDetail;
SELECT concat('Hello ', name) FROM EmployeeDetail;
SELECT * FROM EmployeeDetail WHERE Salary > 60000;
SELECT * FROM EmployeeDetail WHERE Salary < 700000;
SELECT * FROM EmployeeDetail WHERE Salary BETWEEN 50000 AND 60000;
