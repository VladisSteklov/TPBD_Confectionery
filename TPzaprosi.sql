use TP_Confectionery;
go
exec dbo.insert_into_shops
@name='��������',
@profit=0,
@costs=0;
go
exec dbo.insert_into_shops
@name='��������'
go
exec dbo.insert_into_shops
@name='��������'
exec dbo.insert_into_shops
@name='������� ������'

select *from dbo.Pastry_shops;

exec dbo.insert_into_employees
@fistname='������',@lastname='����',
@middlename='��������',@id_shop='1'
exec dbo.insert_into_employees
@fistname='������',@lastname='����',
@middlename='����������',@id_shop='3'
exec dbo.insert_into_employees
@fistname='����������',@lastname='�����',
@middlename='����������',@id_shop='2'
exec dbo.insert_into_employees
@fistname='�������',@lastname='������',
@middlename='����������',@id_shop='1'
exec dbo.insert_into_employees
@fistname='����������',@lastname='�����',
@middlename='��������������',@id_shop='1'
exec dbo.insert_into_employees
@fistname='�������',@lastname='�������',
@middlename='��������',@id_shop='4'
exec dbo.insert_into_employees
@fistname='�������',@lastname='����',
@middlename='����������',@id_shop='3'
exec dbo.insert_into_employees
@fistname='��������',@lastname='�������',
@middlename='����������',@id_shop='2'
exec dbo.insert_into_employees
@fistname='������',@lastname='����',
@middlename='�������������',@id_shop='3'
exec dbo.insert_into_employees
@fistname='�������',@lastname='�����',
@middlename='����������',@id_shop='4'
exec dbo.insert_into_employees
@fistname='��������',@lastname='�����',
@middlename='��������',@id_shop='4';
exec dbo.insert_into_employees
@fistname='C������',@lastname='�����',
@middlename='����������',@id_shop='2';
exec dbo.insert_into_employees
@fistname='��������',@lastname='�����',
@middlename='���������',@id_shop='2';
exec dbo.insert_into_employees
@fistname='������',@lastname='�������',
@middlename='�������������',@id_shop='1';
exec dbo.insert_into_employees
@fistname='���������',@lastname='������',
@middlename='������������',@id_shop='2';
exec dbo.insert_into_employees
@fistname='��������',@lastname='�������',
@middlename='���������',@id_shop='4';

select *from dbo.Employees;


exec dbo.insert_into_products
@name='�����',@price='80',@id_shop='1'
exec dbo.insert_into_products
@name='�����',@price='40',@id_shop='1'
exec dbo.insert_into_products
@name='�������',@price='70',@id_shop='1'
exec dbo.insert_into_products
@name='��������',@price='90',@id_shop='1'
exec dbo.insert_into_products
@name='�������',@price='120',@id_shop='1'
exec dbo.insert_into_products
@name='����� ��������',@price='28',@id_shop='2'
exec dbo.insert_into_products
@name='���� ������ ���������',@price='35',@id_shop='2'
exec dbo.insert_into_products
@name='�������� ����',@price='40',@id_shop='2'
exec dbo.insert_into_products
@name='������������ ����',@price='38',@id_shop='2'
exec dbo.insert_into_products
@name='����������� ����',@price='50',@id_shop='2'
exec dbo.insert_into_products
@name='������� � �������',@price='40',@id_shop='3'
exec dbo.insert_into_products
@name='������� � ������',@price='40',@id_shop='3'
exec dbo.insert_into_products
@name='������� � ���������',@price='40',@id_shop='3'
exec dbo.insert_into_products
@name='������� � ����� � �����',@price='50',@id_shop='3'
exec dbo.insert_into_products
@name='������',@price='90',@id_shop='3'
exec dbo.insert_into_products
@name='��������',@price='600',@id_shop='4'
exec dbo.insert_into_products
@name='�������������',@price='420',@id_shop='4'
exec dbo.insert_into_products
@name='�������',@price='260',@id_shop='4'
exec dbo.insert_into_products
@name='�����',@price='480',@id_shop='4'
exec dbo.insert_into_products
@name='�������� ����',@price='550',@id_shop='4'
exec dbo.insert_into_products
@name='������',@price='195',@id_shop='4'

select *from dbo.Products order by id_shop;

exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='�����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='�����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='����� ������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='�����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='�����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='���� ���������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='��������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='�����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='�������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='�����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='������� �������������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='���� ������ ���������',@nameingredient='���� ������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='���� ������ ���������',@nameingredient='����� ������������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='���� ������ ���������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������������ ����',@nameingredient='���� ������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������������ ����',@nameingredient='����� ������������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������������ ����',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='����� ������������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='���� ������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����� ��������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����� ��������',@nameingredient='���� �����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����� ��������',@nameingredient='����� ������������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� ����',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� ����',@nameingredient='����� ������������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� ����',@nameingredient='���� ������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� ����',@nameingredient='����'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� �������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� �������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� �������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� �������',@nameingredient='����� ������������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='����������� �������',@nameingredient='����'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ������',@nameingredient='����� ����������������'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ���������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ���������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ���������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ���������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ���������',@nameingredient='���� ������������'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ����� � �����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ����� � �����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ����� � �����',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ����� � �����',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � ����� � �����',@nameingredient='���'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � �������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � �������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � �������',@nameingredient='������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � �������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������� � �������',@nameingredient='������'


exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='������'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�����',@nameingredient='�����'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='������',@nameingredient='�������'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������',@nameingredient='���'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='��������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='��������',@nameingredient='��������� ������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='��������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='��������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='��������',@nameingredient='������'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='����� ������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������� ����',@nameingredient='��������� ������'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������������',@nameingredient='����'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������������',@nameingredient='��������'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='�������������',@nameingredient='��������� ������'





exec dbo.delete_ingredients_in_Products @nameproduct='�����', @nameingredient='����� ������';
exec dbo.delete_ingredients_in_Products @nameproduct='�������� ����', @nameingredient='����� ������'

select *from dbo.Pastry_shops;
select *from dbo.Products;
select * from dbo.ingredients_in_Products;
select * from dbo.Ingredients;

exec dbo.update_products_kollvo @kollvo='0',@name='����������� ����';
exec dbo.update_shops_profit @id='2';


go
create view show_ingredients as
select name as '�������� �����������',kollvoinsklad as '���-�� ����������� �� ������',price as '���� �� ���������� (1��)',measure as '���� ���������',
price*kollvoinsklad as '���������' from dbo.Ingredients;
go
select *from dbo.show_ingredients;

go
Create view show_products as
select A.name as '������', A.kollvo as '���-�� ������������', A.shelflife as '���� �������� (��)', A.price as '���� �������',A.price*A.kollvo as '��������� �� �������',
B.name as '������������'
from dbo.Products A left join dbo.Pastry_shops B on A.id_shop=B.id
go

Create view show_products_price as
select A.name,A.kollvo as '���-�� ��������',isnull(A.price,0) as '���� �������',sum(ISNULL(C.composition,0)*ISNULL(D.price,0))as '���� ������������'
from dbo.Products A left join dbo.Pastry_shops B on A.id_shop=B.id
left join dbo.Ingredients_in_Products C on A.name=C.nameproduct 
inner join dbo.Ingredients D on C.nameingredient= D.name
group by A.name,A.price,A.kollvo




select sum(ISNULL(C.composition,0)*ISNULL(D.price,0)) as '���� ������������'
from dbo.Products A left join dbo.Ingredients_in_Products C on A.name=C.nameproduct 
inner join dbo.Ingredients D on C.nameingredient= D.name where A.name='����� ��������'





select name from dbo.Products where id_shop=1;


Create Procedure view_products_price
as
begin
select * from dbo.show_products_price
end;



select *from dbo.show_products

go
Create view show_shops as
select name as '������������',profit as '�������',costs as '������',profit-costs as '�������'from dbo.Pastry_shops;
go
select *from dbo.show_shops;

go
Create view show_employees_in_shops as
select A.firstname as '�������', A.secondname as '���', A.middlename as '��������',B.name as '������������' from dbo.Employees A 
left join dbo.Pastry_shops B on A.id_shop=B.id
go
select *from dbo.show_employees_in_shops;

go
Create procedure show_composition 
@nameproduct varchar(50)='a'
as
if (@nameproduct='a')
select A.nameproduct as '�������',A.nameingredient as '������',B.price as '���� �� ���������� (1��)',
A.composition as'�������������� ������',B.measure as '���� ���������',ISNULL(B.price,0)*ISNULL(A.composition,0) as '��������� �� ����������'
 from dbo.Ingredients_in_Products A  left join 
dbo.Ingredients B on A.nameingredient=B.name order by "�������" ;
else
select A.nameproduct as '�������',A.nameingredient as '������',B.price as '���� �� ���������� (1��)',
A.composition as'�������������� ������',B.measure as '���� ���������',ISNULL(B.price,0)*ISNULL(A.composition,0) as '��������� �� ����������'
 from dbo.Ingredients_in_Products A  left join 
dbo.Ingredients B on A.nameingredient=B.name where A.nameproduct=@nameproduct order by "�������";
go
exec dbo.show_composition


exec dbo.show_composition @nameproduct='������';
exec dbo.delete_ingredients_in_Products @nameproduct='������' , @nameingredient='������'
exec insert_into_ingredients_in_Products @nameproduct='������' , @nameingredient='������'
delete from dbo.Ingredients where name='������'
delete from dbo.Products where name='������'


exec dbo.show_composition 

exec dbo.delete_product @name='������';
exec dbo.delete_ingredient @name='������';

select * from dbo.Ingredients_in_Products order by nameproduct


