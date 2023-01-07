#UC1- Create a payroll service database
create database payroll_service;
show databases;
use payroll_service;
#UC2- Ability to create a employee payroll table in the payroll service database to manage employee payrolls
create table employee_payroll (id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL,
salary Double NOT NULL, start DATE NOT NULL, PRIMARY KEY (id));
Select * from payroll_service.employee_payroll;
#UC3- Ability to create employee payroll data in the payroll service database as part of CURD Operation
insert into employee_payroll (name, salary, start) values ( 'bill',100000.00,'2018-01-03'),('terisa',200000.00,'2019-11-13');

#UC4- Ability to retrieve all the employee payroll data that is added to payroll service database
select * from employee_payroll;

#UC5- 
select salary from employee_payroll where name='bill';
select * from employee_payroll where start between CAST('2018-01-01' AS DATE)AND DATE(NOW());

#UC6 - 
alter table employee_payroll add gender char(1) after name;
update payroll_service.employee_payroll set gender = 'M' where name = 'bill';
update payroll_service.employee_payroll set gender = 'F' where name = 'terisa';

#UC7
insert into payroll_service.employee_payroll (name, gender, salary, start) values ( 'Ullas','M',700000.00,'2018-01-03'),
('Sayali','F',300000.00,'2019-11-13'), ('Aliya','F',150000.00,'2019-11-13'), ( 'Tauqeer','M',600000.00,'2020-01-06');
select sum(salary) from payroll_service.employee_payroll where gender = 'F' group by gender;
select sum(salary) from payroll_service.employee_payroll where gender = 'M' group by gender;
select avg(salary) from payroll_service.employee_payroll;
select min(salary) from payroll_service.employee_payroll;
select max(salary) from payroll_service.employee_payroll;
select count(salary) from payroll_service.employee_payroll;

#UC8
alter table payroll_service.employee_payroll add phone_number varchar(25) after name;
alter table payroll_service.employee_payroll add address varchar(100) DEFAULT 'TBD' after phone_number;
alter table payroll_service.employee_payroll add department varchar(150) not null after address;

#UC9
alter table payroll_service.employee_payroll rename column salary to basic_pay;
alter table payroll_service.employee_payroll add deductions double not null after basic_pay;
alter table payroll_service.employee_payroll add taxablePay double not null after deductions;
alter table payroll_service.employee_payroll add netPay double not null after taxablePay;
alter table payroll_service.employee_payroll add income_tax double not null after taxablePay;

#UC10
update payroll_service.employee_payroll set department = "Sales" where id = '2';
insert into payroll_service.employee_payroll (name, department, gender, basic_pay, deductions, taxablePay, income_tax, netPay, start)
 values ("terisa", "Marketing", 'F', 3000000.00, 1000000.00, 2000000.00, 500000.00, 1500000.00, '2018-01-03');
select * from payroll_service.employee_payroll where name= "terisa";

#UC11
show databases;
use payroll_service;
create table Employee (Emp_ID int not null auto_increment, Emp_Name varchar(45) not null, Gender varchar(10) not null, 
DOJ date not null, Department varchar(45) not null, Salary double not null, primary key (Emp_ID));
insert into Employee (Emp_Name, Gender, DOJ, Department, Salary) values ("Sahil", "Male", '2020-11-20', "IT", 1800000), 
("Amresh", "Male", '2020-06-10', "IT", 2000000), ("Sakshi", "Female", '2020-11-20', "Marketing", 1500000),
("Aisha", "Female", '2020-11-20', "Marketing", 1700000);
select * from Employee;
create table Employee_Department (Dept_ID int not null primary key, Department varchar(45) not null,
 Designation varchar(45) not null, foreign key (Dept_ID) references Employee(Emp_ID));
 insert into Employee_Department (Dept_ID, Department, Designation) values (1, "IT", "Junior Developer"), (2, "IT", "Junior Developer"),
 (3, "Marketing", "Junior Executive"), (4, "Marketing", "Junior Executive");
 select * from Employee_Department;
select sum(salary) from payroll_service.employee where gender = 'Female' group by gender;
select sum(salary) from payroll_service.employee where gender = 'Male' group by gender;
select avg(salary) from payroll_service.employee;
select min(salary) from payroll_service.employee;
select max(salary) from payroll_service.employee;
select count(salary) from payroll_service.employee;

#UC12
select * from payroll_service.employee;
select * from payroll_service.employee_department;
select salary from payroll_service.employee where name='sahil';
select * from payroll_service.employee where DOJ between CAST('2020-07-01' AS DATE)AND DATE(NOW());

