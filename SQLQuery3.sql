use A_12_16_12;

select firstname+SUBSTRING(lastname,1,1) as "ФИ сотрудника",id from Teachers order by "ФИ сотрудника";
Create table Cources(
id int Primary Key Identity(1,1) not null,
Code CourseNumber not null,
name varchar(256) not null,
shortDiscr varchar(2000) default null
);

insert into Cources(Code,name) values
('A','Информатика'),
('B','Математика'),
('C','Физика'),
('D','История');
select *from Cources;
create table Students
(
id int Primary key not null,
firstname nvarchar(50) not null,
lastname nvarchar(50) not null,
midlename nvarchar(50)  null,
birthdate date not null check(year(getdate())-year(birthdate)-(case when (month(getdate())<month(birthdate) or 
(month(getdate())=month(birthdate) and day(getdate())<day(birthdate)))
   then 1 else 0 end)>12),
registrationdate date not null default getdate()
);


create table Contracts
(
contractId int primary key  not null,
studentId int,
CONSTRAINT FK_CS foreign key (studentID) references Students(id)
    ON DELETE CASCADE    
    ON UPDATE CASCADE,
courseId int,
CONSTRAINT FC_CC foreign key (courseId) references Cources(id)
    ON DELETE CASCADE    
    ON UPDATE CASCADE ,
data date,
Cash CashValue
);
ALTER TABLE Contracts NOCHECK CONSTRAINT ALL
select *from Teachers;
insert into Teachers(id,firstname,lastname,midlename)
values (1,'a','b','a'),
(4,'a','b','a');

insert into Students (id,firstname,lastname,midlename,birthdate,registrationdate) values 
(9,'Демидова','Екатерина','Владиславовна','2000-06-26',default);
insert into Contracts(contractId,studentId,courseId,data,cash) values 
(1,1,1,'1998-06-05',12);

insert into Students (id,firstname,lastname,midlename,birthdate,registrationdate) values 
(2,'Иванов','Иван','Иванович','2005-11-02',default);
select * from Students;

declare @cmd varchar(255);
set @cmd='bcp A_12_16_12.dbo.Students in C:\Users\MSSQLSERVER\Documents\StudentsEng.txt -c -T';
exec master..xp_cmdshell @cmd;
select *from Students where id=10;

set @cmd='bcp Contracts in C:\Users\Admin\Desktop\Contracts -c -T'
exec master..xp_cmdshell @cmd
select *from Cources;
select *from Students;
select *from Contracts;

declare 
  @rc int,
  @cmd nvarchar(255)
set @cmd = 'type C:\Users\MSSQLSERVER\Documents\StudentsEng.txt'  
EXEC @rc = master..xp_cmdshell @cmd


declare my_cursor cursor for
select *from Teachers
open my_cursor
fetch next from my_cursor while @@FETCH_STATUS=0
begin
delete from Teachers where id%2=0;
fetch next from my_cursor
end
close my_cursor;
deallocate my_cursor;


begin transaction
	begin try
		delete from teachers where id=1;
		update Cources set shortDiscr='Усложненный' where id=10;
		insert into Students (id,firstname,lastname,midlename,birthdate,registrationdate) values 
		(10,'Васечкин','Петя','Иванович','1986-07-12',default);/*10*/
	end try
	begin catch
		select
		ERROR_NUMBER() as ErrorNumber,
		ERROR_SEVERITY() as ErrorSevirity,
		ERROR_STATE() as ErrorState,
		ERROR_PROCEDURE() as ErrorProcedure,
		ERROR_LINE() as ErrorMessage,
		ERROR_MESSAGE() as ErrorMessage
		if @@TRANCOUNT>0 rollback transaction;
	end catch;
if @@TRANCOUNT>0 commit;
select *from Teachers;
select *from Cources;
select *from Students;