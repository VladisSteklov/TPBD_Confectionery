use TP_Confectionery

Create nonclustered Index name on dbo.Pastry_shops(name);


Create function get_Profitable_Shop ()
returns int
as
begin
declare @id int; declare @maxincome int;
select @maxincome=max(A.profit-A.costs) from dbo.Pastry_shops A;
select @id=A.id from dbo.Pastry_shops A where A.profit-A.costs=@maxincome;
return @id
end



go
Create Procedure get_Hight_Shop
as
declare @idmax int;
set @idmax=dbo.Get_Profitable_Shop();
select name as 'Кондитерская с наибольшей прибылью',profit as 'Выручка', costs as 'Расходы',profit-costs as 'Чистая прибыль' 
from dbo.Pastry_shops where id=@idmax;
go






exec dbo.get_Hight_Shop

Create Procedure control_ingredients
@boundaryvalue int=-1
as
if(@boundaryvalue=-1) (select 'Укажите значение границы поиска кол-ва ингредиентов');
else
(select A.name as 'Нехватающий ингредиент',A.kollvoinsklad as 'Кол-во на складе (меньше заданного)',A.price as 'Цена' from dbo.Ingredients A
where A.kollvoinsklad<@boundaryvalue);
go
exec dbo.control_ingredients @boundaryvalue='5';

Create Function shelf_life_table()
returns
@tableoshelf table(name varchar(50) Primary Key,day_of_shelf int) 
as
begin
insert into @tableoshelf
select name,datediff(day,getdate(),shelflife) from dbo.Products;
return
end
go


Create Procedure delay_control_products
@day int=-1
as
if (@day=-1)
(select name as 'Продукт',day_of_shelf as 'Срок годности (дни)' from dbo.shelf_life_table());
else
(select name as 'Продукт',day_of_shelf as 'Срок годности (дни)' from dbo.shelf_life_table() where day_of_shelf<@day)

go
exec dbo.delay_control_products @day='600';


Create Trigger DisableofDelete_Shops on dbo.Pastry_shops
Instead of delete 
as
begin
declare @name varchar(30);
select @name=name from deleted;
raiserror(N'Запрещено удалять кондитерские. Попытка удаления кондитерского магазина "%s"',16,1,@name);
end;

delete from dbo.Pastry_shops where id=1;


go
Create Trigger CheckSame_Employees on dbo.Employees
after insert
as
begin
declare @name varchar(30), @surname varchar(30),@middlename varchar(30);
declare @count int, @id_shop int;
select @id_shop= id_shop from inserted;select @surname = firstname from inserted;select @name= secondname from inserted;
select @middlename= middlename from inserted;
select @count= count(*) from dbo.Employees where (firstname=@surname and secondname=@name and middlename=@middlename)
if (@count>1)
select A.firstname+' '+A.secondname+' '+A.middlename  as '"Такой сотрудник уже есть!"',B.name 'Магазин' from dbo.Pastry_shops B,Employees A where (A.firstname=@surname and 
A.secondname=@name and A.middlename=@middlename and A.id_shop=B.id);
end
go

select *from dbo.Employees
exec dbo.insert_into_employees @fistname='Стеклов',@lastname='Влад',@middlename='Витальевич',@name='Сладости';



Create Trigger ShowAdd_Products on dbo.Products
after insert
as
begin
select name as 'Добавленный продукт',kollvo as 'Кол-во изготовлений',shelflife as 'Срок годности(до)',price as 'Цена за товар',id_shop as 'Кондитерская'from inserted;
end


go


Create Trigger InsertIngredients_Products on dbo.Ingredients_in_Products
after  insert
as
begin
declare @nameingredient varchar(50),@nameproduct varchar(50);
select @nameingredient=nameingredient from inserted;
select @nameproduct=nameproduct from inserted;
if NOT EXISTS (select name from dbo.Ingredients where name=@nameingredient)  
begin
exec dbo.insert_into_ingredients @nameingredient=@nameingredient;
end
if NOT EXISTS (select name from dbo.Products where name=@nameproduct)
begin
exec dbo.insert_into_products @name=@nameproduct;
end
end;
go

exec dbo.insert_into_ingredients_in_Products @nameproduct='Фрукты',@nameingredient='Лед';
exec dbo.delete_ingredients_in_Products @nameproduct='Фрукты',@nameingredient='Лед';
delete from dbo.Products where name='Фрукты';
delete from dbo.Ingredients where name='Лед';
select * from dbo.show_ingredients
select * from dbo.show_products
exec dbo.show_composition;

select *from dbo.show_ingredients

go
Create Trigger ShowAdd_Ingredients on dbo.Ingredients
after insert
as
begin
select name as 'Добавленный ингридиент',price as 'Цена за ингредиент(1шт)',kollvoinsklad as 'Кол-во ингридиентов на складе' from inserted;
end
go