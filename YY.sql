Create database COMPANY1;
USE COMPANY1;
create table EMP(EMPNO INT,
    ENAME CHAR (20),
    JOB CHAR (50),
    MGR INT,
    HIREDATE DATE,
    SAL DOUBLE,
    COMM DOUBLE,
    DEPTNO INT);
CREATE TABLE `company1`.`dept` (
  `DEPTNO` INT NOT NULL,
  `DNAME` VARCHAR(45) NOT NULL,
  `LOC` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DEPTNO`));
SELECT * FROM company1.emp;   
SELECT * FROM company1.dept;

-- Q1 1.	List all Employees whose salary is greater than 1,000 but not 2,000. Show the Employee Name, Department and Salary (4 marks)
select emp.ENAME as Name, dept.DNAME as Department, emp.SAL as Salary
from emp, dept
where emp.DEPTNO = dept.DEPTNO
and emp.SAL >1000 and emp.SAL <2000;

-- Q2  2.	Count the number of people in department 30 who receive a salary and a commission. (4 marks)

select count(emp.EMPNO) as Number_of_people_in_Dep_30_HAS_SAL_and_COM
from emp
where emp.DEPTNO = 30
and emp.SAL is NOT NULL
and emp.COMM is NOT NULL;
    

    