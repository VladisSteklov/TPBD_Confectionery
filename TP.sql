use TP_Confectionery;
Create Type CashValue from decimal(10,2);

Create Table Pastry_shops (
id int  Primary Key identity(1,1) not null,
name varchar(30) not null,
profit CashValue default null,
costs CashValue default null,
);
go
Create Table Employees (
id_shop int not null,
firstname varchar(30) not null,
secondname varchar(30) not null,
middlename varchar(30) not null,
Primary Key(id_shop,firstname,secondname,middlename),
Foreign Key(id_shop) references Pastry_shops(id)
);
go
Create Table Products (
name varchar(50) Primary Key not null,
kollvo int default 0 check(kollvo>=0),
shelflife date null,
price CashValue null,
id_shop int not null references Pastry_shops(id)
);
go
Create Table Ingredients_in_Products (
nameproduct varchar(50) not null,
nameingredient varchar(50) not null,
Primary Key(nameingredient,nameproduct),
Foreign Key(nameproduct) references Products(name),
Foreign Key(nameingredient) references Ingredients(name)
);
go
Create Table Ingredients(
name varchar(50) Primary Key not null,
price CashValue null,
kollvoinsklad int  default 0
);

go
Create Procedure insert_into_shops
@name varchar(50),
@profit CashValue='0',
@costs CashValue='0'
as
insert into dbo.Pastry_shops (name,profit,costs)
values (@name,@profit,@costs);
go

Create Procedure insert_into_employees
@fistname varchar(30),
@lastname varchar(30),
@middlename varchar(30),
@name varchar(30)
as
declare @id int;
select @id=id from dbo.Pastry_shops where name=@name;
insert into dbo.Employees(firstname,secondname,middlename,id_shop)
values (@fistname,@lastname,@middlename,@id);
go

Create Procedure insert_into_products
@name varchar(50),
@kollvo int='0',
@shelflife date='2020-01-01',
@price CashValue='0',
@name_shop varchar(30)='Хлебница'
as
declare @id int;
select @id=id from dbo.Pastry_shops where name=@name_shop;
if NOT EXISTS (select name from dbo.Products where name=@name)
begin
insert into dbo.Products(name,kollvo,shelflife,id_shop,price)
values (@name,@kollvo,@shelflife,@id,@price);
end
else
begin
RAISERROR (N'Ошибка такой элемент уже есть',16,1);
end


go
exec dbo.update_shops_profit @name='weaw31';


Create Procedure insert_into_ingredients_in_Products
@nameproduct varchar(50),
@nameingredient varchar(50)
as
insert into dbo.Ingredients_in_Products(nameproduct,nameingredient)
values (@nameproduct,@nameingredient);
go

Create Procedure insert_into_ingredients
@nameingredient varchar(50),
@price CashValue='0',
@kollvo int='0'
as
begin
IF NOT EXISTS (select name from dbo.Ingredients where name=@nameingredient) 
begin
insert into  dbo.Ingredients(name,price,kollvoinsklad)
values (@nameingredient,@price,@kollvo) 
end
else
begin
RAISERROR (N'Ошибка такой элемент уже есть',16,1);
end
end
go

Create Procedure update_products_kollvo
@kollvo int,
@name varchar(50)
as
update dbo.Products set kollvo=@kollvo where name=@name;


exec update_products_kollvo @kollvo='0',@name='aweewaeaa'
exec dbo.view_products

go
Create Procedure update_products_shelflife
@shelflife date,
@name varchar(50)
as
update dbo.Products set shelflife=@shelflife where name=@name;

go
Create Procedure update_products_price
@price CashValue,
@name varchar(50)
as
update dbo.Products set price=@price where name=@name;

go
Create Procedure update_ingredients_kollvoinsklad
@kollvoinsklad int,
@name varchar(50)
as
update dbo.Ingredients set kollvoinsklad=@kollvoinsklad where name=@name;

go
Create Procedure update_ingredients_price
@price CashValue,
@name varchar(50)
as
update dbo.Ingredients set price=@price where name=@name;




go
Create Procedure update_shops_profit
@name varchar(30)
as

declare @profit CashValue;declare @id int;
select @id=id from dbo.Pastry_shops where name=@name;
select @profit=sum(ISNULL(kollvo,0)*ISNULL(price,0)) from dbo.Products  where id_shop=@id ;
update dbo.Pastry_shops set profit=@profit where id=@id;
go

select sum(isnull(kollvo,0)*isnull(price,0) from dbo.Products where id_shop=1;



go
Create Procedure update_shops_expenses
@name varchar(30)
as
declare @id int;
select @id=id from dbo.Pastry_shops where name=@name;
update dbo.Pastry_shops set costs=dbo.found_product_lost_price(@id) where id=@id
go

exec dbo.delay_control_products

Create Procedure update_products_shops
@nameproduct varchar(50),
@nameshop varchar(30)
as
declare @id_shop int;
select @id_shop =id from dbo.Pastry_shops where name=@nameshop;
update dbo.Products set id_shop=@id_shop where name=@nameproduct
go

Create Procedure update_composition_products
@nameproduct varchar(50),
@nameingreident varchar(50),
@composition float
as
begin
update dbo.Ingredients_in_Products set composition=@composition where nameproduct=@nameproduct and nameingredient=@nameingreident
end

Create Procedure update_measure_ingredients
@name varchar(50),
@measure varchar(15)
as
begin
update dbo.Ingredients set measure=@measure where name=@name;
end
exec dbo.update_measure_ingredients @name='Сахар',@measure='кг'
select *from dbo.Ingredients


exec dbo.update_composition_products @nameproduct='Варенье',@nameingreident='Сахар',@composition='0'
exec dbo.show_composition

select *from dbo.show_products

exec dbo.update_products_shops @nameproduct='Варенье',@nameshop='ara'

go
Create Procedure delete_ingredients_in_Products
@nameproduct varchar (50),
@nameingredient varchar(50)
as
delete from dbo.Ingredients_in_Products where nameingredient=@nameingredient and nameproduct=@nameproduct ;
go

Create Procedure delete_product
@name varchar(50)
as
delete from dbo.Products where name=@name;
go
Create Procedure delete_ingredient
@name varchar(50)
as
delete from dbo.Ingredients where name=@name;

exec delete_ingredient @name='Владик'


go
Create Procedure view_employees_in_shops 
as
select *from dbo.show_employees_in_shops 

exec dbo.view_employees_in_shops

go
Create Procedure view_igredients 
as
select *from dbo.show_ingredients;

exec dbo.view_igredients
exec dbo.control_ingredients @boundaryvalue='5';

go
Create Procedure view_products
as
select *from dbo.show_products

exec dbo.view_products

go

Create Procedure view_shops
as
select *from dbo.show_shops order by "Выручка"-"Расход" desc;

exec dbo.view_shops
exec dbo.get_Hight_Shop

exec dbo.view_shops;
exec dbo.update_shops_profit @name='Сладости'
exec get_Hight_Shop;
exec view_employees_in_shops
exec delay_control_products;
exec view_igredients;
exec show_composition;
exec control_ingredients @boundaryvalue='500';

exec view_products;
exec dbo.delay_control_products @day='550';
delete from dbo.Products where name='владик';


select * from dbo.Pastry_shops
delete from dbo.Pastry_shops where id=6;
select * from dbo.Products
exec dbo.update_products_kollvo @kollvo='0',@name='Батон Нарезной';

select *from dbo.Ingredients_in_Products where nameingredient='Яйцо'
select *from dbo.Ingredients


select *from dbo.Products where name='Яйцо'


exec dbo.insert_into_products @name='Яйцо'

exec dbo.update_products_price @price='', @name='Яйцо';
delete from dbo.Products where name='Яйцо'
insert into  dbo.Products(name,id_shop)
values ('Яйцо',2); 

select *from dbo.Pastry_shops
select *from dbo.Employees; delete from dbo.Employees where firstname='Стеклов';

exec dbo.view_products


exec dbo.view_igredients
exec dbo.control_ingredients @boundaryvalue='5';

exec insert_into_ingredients @nameingredient='ewaea';delete from dbo.Ingredients where name='Соль'
delete from dbo.Ingredients where name='Владик';


exec dbo.view_shops
exec dbo.view_igredients


create procedure get_shops
as
select name from dbo.Pastry_shops order by name;

exec dbo.get_shops;


create procedure get_products
as
select name from dbo.Products order by name;

exec dbo.get_products


create procedure get_ingredients
as
select name from dbo.Ingredients order by name;

exec dbo.get_ingredients;

go
create procedure get_products_composition
as
select nameproduct from dbo.Ingredients_in_Products order by nameproduct;
go

go
create procedure get_ingredients_composition
as
select nameingredient from dbo.Ingredients_in_Products order by nameingredient;
go



delete from dbo.Products where name='Владик'

exec dbo.insert_into_products @name='Владик'
exec dbo.show_composition @nameproduct='Зефир';

exec dbo.delete_ingredient @name='Владик';

exec show_composition;

exec view_igredients