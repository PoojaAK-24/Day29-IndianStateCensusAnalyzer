use payroll_service;
create table Employee_Payroll1
(
EmployeeName varchar(50),
Gender char(1),
salary money
);
select * from  Employee_Payroll1

create procedure SpAddEmployeeDetails
@EmployeeName varchar(50),
@Gender char(1),
@NetPay money
as
insert into Employee_Payroll1 values(@EmployeeName,@Gender,@NetPay);
go

SpAddEmployeeDetails 'test','M',1234.5;