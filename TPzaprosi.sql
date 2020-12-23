use TP_Confectionery;
go
exec dbo.insert_into_shops
@name='Сладости',
@profit=0,
@costs=0;
go
exec dbo.insert_into_shops
@name='Хлебница'
go
exec dbo.insert_into_shops
@name='Булочная'
exec dbo.insert_into_shops
@name='Фабрика Тортов'

select *from dbo.Pastry_shops;

exec dbo.insert_into_employees
@fistname='Иванов',@lastname='Иван',
@middlename='Иванович',@id_shop='1'
exec dbo.insert_into_employees
@fistname='Петров',@lastname='Петр',
@middlename='Петровович',@id_shop='3'
exec dbo.insert_into_employees
@fistname='Травникова',@lastname='Елена',
@middlename='Васильевна',@id_shop='2'
exec dbo.insert_into_employees
@fistname='Смирнов',@lastname='Михаил',
@middlename='Витальевич',@id_shop='1'
exec dbo.insert_into_employees
@fistname='Генералова',@lastname='Ольга',
@middlename='Владимирововна',@id_shop='1'
exec dbo.insert_into_employees
@fistname='Игнатов',@lastname='Валерий',
@middlename='Олегович',@id_shop='4'
exec dbo.insert_into_employees
@fistname='Морозов',@lastname='Егор',
@middlename='Викторович',@id_shop='3'
exec dbo.insert_into_employees
@fistname='Потапова',@lastname='Татьяна',
@middlename='Петрововна',@id_shop='2'
exec dbo.insert_into_employees
@fistname='Фадеев',@lastname='Илья',
@middlename='Александрович',@id_shop='3'
exec dbo.insert_into_employees
@fistname='Кузяева',@lastname='Ирина',
@middlename='Васильевна',@id_shop='4'
exec dbo.insert_into_employees
@fistname='Акинфеев',@lastname='Игорь',
@middlename='Игоревич',@id_shop='4';
exec dbo.insert_into_employees
@fistname='Cемехин',@lastname='Павел',
@middlename='Алексеевич',@id_shop='2';
exec dbo.insert_into_employees
@fistname='Краснова',@lastname='Елена',
@middlename='Федоровна',@id_shop='2';
exec dbo.insert_into_employees
@fistname='Малкин',@lastname='Евгений',
@middlename='Владиславович',@id_shop='1';
exec dbo.insert_into_employees
@fistname='Коваленко',@lastname='Сергей',
@middlename='Владимирович',@id_shop='2';
exec dbo.insert_into_employees
@fistname='Филатова',@lastname='Людмила',
@middlename='Сергеевна',@id_shop='4';

select *from dbo.Employees;


exec dbo.insert_into_products
@name='Зефир',@price='80',@id_shop='1'
exec dbo.insert_into_products
@name='Халва',@price='40',@id_shop='1'
exec dbo.insert_into_products
@name='Пастила',@price='70',@id_shop='1'
exec dbo.insert_into_products
@name='Мармелад',@price='90',@id_shop='1'
exec dbo.insert_into_products
@name='Варенье',@price='120',@id_shop='1'
exec dbo.insert_into_products
@name='Батон Нарезной',@price='28',@id_shop='2'
exec dbo.insert_into_products
@name='Хлеб Черный Дарницкий',@price='35',@id_shop='2'
exec dbo.insert_into_products
@name='Заварной Хлеб',@price='40',@id_shop='2'
exec dbo.insert_into_products
@name='Измайловский хлеб',@price='38',@id_shop='2'
exec dbo.insert_into_products
@name='Бородинский хлеб',@price='50',@id_shop='2'
exec dbo.insert_into_products
@name='Пирожок с яблоком',@price='40',@id_shop='3'
exec dbo.insert_into_products
@name='Пирожок с вишней',@price='40',@id_shop='3'
exec dbo.insert_into_products
@name='Пирожок с картошкой',@price='40',@id_shop='3'
exec dbo.insert_into_products
@name='Пирожок с рисом и яйцом',@price='50',@id_shop='3'
exec dbo.insert_into_products
@name='Сочник',@price='90',@id_shop='3'
exec dbo.insert_into_products
@name='Наполеон',@price='600',@id_shop='4'
exec dbo.insert_into_products
@name='Ленинградский',@price='420',@id_shop='4'
exec dbo.insert_into_products
@name='Медовик',@price='260',@id_shop='4'
exec dbo.insert_into_products
@name='Прага',@price='480',@id_shop='4'
exec dbo.insert_into_products
@name='Киевский торт',@price='550',@id_shop='4'
exec dbo.insert_into_products
@name='Сказка',@price='195',@id_shop='4'

select *from dbo.Products order by id_shop;

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Варенье',@nameingredient='Ягоды'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Варенье',@nameingredient='Сахар'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Зефир',@nameingredient='Белок яичный'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Зефир',@nameingredient='Сахар'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пастила',@nameingredient='Сахар'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пастила',@nameingredient='Патока'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пастила',@nameingredient='Пюре фруктовое'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Мармелад',@nameingredient='Патока'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Мамелад',@nameingredient='Сахар'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Мамелад',@nameingredient='Желатин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Халва',@nameingredient='Сахар'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Халва',@nameingredient='Семечки подсолнечника'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Хлеб Черный Дарницкий',@nameingredient='Мука ржаная'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Хлеб Черный Дарницкий',@nameingredient='Масло подсолнечное'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Хлеб Черный Дарницкий',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Измайловский хлеб',@nameingredient='Мука ржаная'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Измайловский хлеб',@nameingredient='Масло подсолнечное'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Измайловский хлеб',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Заварной хлеб',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Заварной хлеб',@nameingredient='Масло подсолнечное'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Заварной хлеб',@nameingredient='Мука ржаная'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Заварной хлеб',@nameingredient='Тмин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Батон Нарезной',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Батон Нарезной',@nameingredient='Мука белая'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Батон Нарезной',@nameingredient='Масло подсолнечное'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Бородинский Хлеб',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Бородинский Хлеб',@nameingredient='Масло подсолнечное'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Бородинский Хлеб',@nameingredient='Мука ржаная'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Бородинский Хлеб',@nameingredient='Тмин'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Каллорийная булочка',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Каллорийная булочка',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Каллорийная булочка',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Каллорийная булочка',@nameingredient='Масло подсолнечное'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Каллорийная булочка',@nameingredient='Изюм'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с вишней',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с вишней',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с вишней',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с вишней',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с вишней',@nameingredient='Вишня консервированная'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с картошкой',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с картошкой',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с картошкой',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с картошкой',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с картошкой',@nameingredient='Пюре картофельное'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с рисом и яйцом',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с рисом и яйцом',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с рисом и яйцом',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с рисом и яйцом',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с рисом и яйцом',@nameingredient='Рис'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с яблоком',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с яблоком',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с яблоком',@nameingredient='Дрожжи'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с яблоком',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Пирожок с яблоком',@nameingredient='Яблоко'


exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сочник',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сочник',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сочник',@nameingredient='Сода'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сочник',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сочник',@nameingredient='Творог'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Прага',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Прага',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Прага',@nameingredient='Сода'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Прага',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Прага',@nameingredient='Какао'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сказка',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сказка',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сказка',@nameingredient='Сода'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сказка',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Сказка',@nameingredient='Желатин'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Медовик',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Медовик',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Медовик',@nameingredient='Сода'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Медовик',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Медовик',@nameingredient='Мед'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Наполеон',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Наполеон',@nameingredient='Сгущенное молоко'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Наполеон',@nameingredient='Сода'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Наполеон',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Наполеон',@nameingredient='Сливки'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Киевский торт',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Киевский торт',@nameingredient='Белок яичный'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Киевский торт',@nameingredient='Сода'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Киевский торт',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Киевский торт',@nameingredient='Сгущенное молоко'

exec dbo.insert_into_ingredients_in_Products
@nameproduct='Ленинградский',@nameingredient='Мука'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Ленинградский',@nameingredient='Яйцо'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Ленинградский',@nameingredient='Сода'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Ленинградский',@nameingredient='Маргарин'
exec dbo.insert_into_ingredients_in_Products
@nameproduct='Ленинградский',@nameingredient='Сгущенное молоко'





exec dbo.delete_ingredients_in_Products @nameproduct='Зефир', @nameingredient='Белок Яичный';
exec dbo.delete_ingredients_in_Products @nameproduct='Киевский торт', @nameingredient='Белок Яичный'

select *from dbo.Pastry_shops;
select *from dbo.Products;
select * from dbo.ingredients_in_Products;
select * from dbo.Ingredients;

exec dbo.update_products_kollvo @kollvo='0',@name='Бородинский хлеб';
exec dbo.update_shops_profit @id='2';


go
create view show_ingredients as
select name as 'Название ингредиента',kollvoinsklad as 'Кол-во ингрединтов на складе',price as 'Цена за ингредиент (1шт)',measure as 'Мера Измерений',
price*kollvoinsklad as 'Стоимость' from dbo.Ingredients;
go
select *from dbo.show_ingredients;

go
Create view show_products as
select A.name as 'Продук', A.kollvo as 'Кол-во изготовлений', A.shelflife as 'Срок годности (до)', A.price as 'Цена продажи',A.price*A.kollvo as 'Стоимость за продукт',
B.name as 'Кондитерская'
from dbo.Products A left join dbo.Pastry_shops B on A.id_shop=B.id
go

Create view show_products_price as
select A.name,A.kollvo as 'Кол-во выпусков',isnull(A.price,0) as 'Цена продажи',sum(ISNULL(C.composition,0)*ISNULL(D.price,0))as 'Цена изготовления'
from dbo.Products A left join dbo.Pastry_shops B on A.id_shop=B.id
left join dbo.Ingredients_in_Products C on A.name=C.nameproduct 
inner join dbo.Ingredients D on C.nameingredient= D.name
group by A.name,A.price,A.kollvo




select sum(ISNULL(C.composition,0)*ISNULL(D.price,0)) as 'Цена изготовления'
from dbo.Products A left join dbo.Ingredients_in_Products C on A.name=C.nameproduct 
inner join dbo.Ingredients D on C.nameingredient= D.name where A.name='Батон нарезной'





select name from dbo.Products where id_shop=1;


Create Procedure view_products_price
as
begin
select * from dbo.show_products_price
end;



select *from dbo.show_products

go
Create view show_shops as
select name as 'Кондитерская',profit as 'Выручка',costs as 'Расход',profit-costs as 'Прибыль'from dbo.Pastry_shops;
go
select *from dbo.show_shops;

go
Create view show_employees_in_shops as
select A.firstname as 'Фамилия', A.secondname as 'Имя', A.middlename as 'Отчество',B.name as 'Кондитерская' from dbo.Employees A 
left join dbo.Pastry_shops B on A.id_shop=B.id
go
select *from dbo.show_employees_in_shops;

go
Create procedure show_composition 
@nameproduct varchar(50)='a'
as
if (@nameproduct='a')
select A.nameproduct as 'Продукт',A.nameingredient as 'Состав',B.price as 'Цена за ингредиент (1шт)',
A.composition as'Количественный состав',B.measure as 'Мера измерений',ISNULL(B.price,0)*ISNULL(A.composition,0) as 'Стоимость за ингредиент'
 from dbo.Ingredients_in_Products A  left join 
dbo.Ingredients B on A.nameingredient=B.name order by "Продукт" ;
else
select A.nameproduct as 'Продукт',A.nameingredient as 'Состав',B.price as 'Цена за ингредиент (1шт)',
A.composition as'Количественный состав',B.measure as 'Мера измерений',ISNULL(B.price,0)*ISNULL(A.composition,0) as 'Стоимость за ингредиент'
 from dbo.Ingredients_in_Products A  left join 
dbo.Ingredients B on A.nameingredient=B.name where A.nameproduct=@nameproduct order by "Продукт";
go
exec dbo.show_composition


exec dbo.show_composition @nameproduct='Владик';
exec dbo.delete_ingredients_in_Products @nameproduct='Владик' , @nameingredient='Владик'
exec insert_into_ingredients_in_Products @nameproduct='Владик' , @nameingredient='Владик'
delete from dbo.Ingredients where name='Владик'
delete from dbo.Products where name='Владик'


exec dbo.show_composition 

exec dbo.delete_product @name='Владик';
exec dbo.delete_ingredient @name='Владик';

select * from dbo.Ingredients_in_Products order by nameproduct


