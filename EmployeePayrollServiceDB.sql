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