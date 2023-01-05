#UC1- Create a payroll service database
create database payroll_service;
show databases;
use payroll_service;
#UC2- Ability to create a employee payroll table in the payroll service database to manage employee payrolls
create table employee_payroll (id INT unsigned NOT NULL AUTO_INCREMENT, name VARCHAR(30) NOT NULL,
salary Double NOT NULL, start DATE NOT NULL, PRIMARY KEY (id));
Select * from payroll_service.employee_payroll;