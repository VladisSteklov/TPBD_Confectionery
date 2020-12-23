use A_12_16_12

--1
create clustered index Id on Cources(id);
create nonclustered index code on Cources(Code) include (Name,ShortDiscr);
drop index code on Cources;
--2
Create view InfoStudents as
Select a.firstname,a.lastname,a.midlename,
count(b.contractId) as 'Число контрактов',sum(b.Cash) as 'Сумма'
from Students a left join
Contracts b on a.id=b.studentId
group by a.firstname,a.lastname,a.midlename;
Select *from A_12_16_12.dbo.InfoStudents;
--3
select top 3 *from A_12_16_12.dbo.InfoStudents order by 'Число контрактов' desc;


--4

go
create view StudentCources 
with schemabinding
as Select a.firstname,a.lastname,b.name as 'Курс',
 isNULL(sum(c.Cash),0) as 'Сумма',COUNT_BIG(*) as 'Кол-во записей'
from dbo.Students a inner join
dbo.Contracts c on a.id=c.studentId inner join
dbo.Cources b on b.id=c.courseId
group by a.firstname,a.lastname,b.name;
go
create unique clustered index StudentCourcesView 
on StudentCources(firstname,lastname,Курс);
select *from dbo.StudentCources

--5
CREATE FUNCTION FoundCash (@id int)
RETURNS CashValue
AS
BEGIN
	DECLARE @SumCash CashValue;
	select @SumCash=sum(Cash)from Contracts a where a.studentId=@id;
	RETURN @SumCash
END;
GO
declare @SumCash CashValue;
set @SumCash=dbo.FoundCash(2);
print @SumCash;
delete from Contracts;

--6
CREATE TRIGGER DisableContractDelete ON Contracts
INSTEAD OF DELETE
AS
begin
DECLARE @id int;DECLARE @sid int;
SELECT @id = contractId FROM deleted;
SELECT @sid = studentId FROM deleted;
RAISERROR ('Попытка удалить контракт с идентификатором %d и идентификатором студента %d', 16, 1, @id,@sid);
	ROLLBACK TRANSACTION
end;
delete from Contracts where contractId=8;

--7
go
Create Procedure  FoundQuartal
@firstdata date, @quartal int out as
begin
select @quartal=DATEPART(quarter,@firstdata);
end
go
declare @quartall int;
exec dbo.FoundQuartal @firstdata='1998-02-05',@quartal = @quartall OUTPUT;
print @quartall;
SELECT @quartall as 'Квартал';

--8
--9

Select 'Вы вошли на сервер '+@@SERVERNAME+' как системный пользователь '+SYSTEM_USER+
' with '+CURRENT_USER+' permission на компьютере ' + CONVERT(varchar,SERVERPROPERTY('MachineName'))
Select ' Версия MS SQL SERVER:  '+ @@VERSION;

--10

select count(*) from sys.all_objects where type = 'P' and schema_name(schema_id) = N'sys';
Select  @@ROWCOUNT as 'Кол-во системных хранимых процедур' 
from sys.all_objects where type = 'p' and SCHEMA_NAME(schema_id)=N'sys'

--11
sp_helpsrvrole;

--12
insert into Cources(Code,name) values
('E','Философия'),
('F','Базы данных');
select *from Cources;
delete from Cources where Code='E' or Code='F';


DECLARE @db_id SMALLINT;  DECLARE @object_id INT;
SET @db_id = DB_ID(N'A_12_16_12');  
SET @object_id = OBJECT_ID(N'A_12_16_12.dbo.Cources'); 
select *from sys.indexes where object_id in (@object_id);
SELECT * FROM sys.dm_db_index_physical_stats(@db_id, @object_id, NULL, NULL , 'LIMITED'); 
SELECT * FROM sys.dm_db_index_usage_stats where object_id in (@object_id);
