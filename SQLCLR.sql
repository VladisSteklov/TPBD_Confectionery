use TP_Confectionery;
EXEC sp_configure 'clr enabled', 1;
RECONFIGURE;

CREATE ASSEMBLY ClrProcTest
FROM 'C:\Users\Admin\Documents\Visual Studio 2015\Projects\CLR_Funtion_TP_Confectionery\CLR_Funtion_TP_Confectionery\bin\Debug\CLR_Funtion_TP_Confectionery.dll';

SELECT * FROM sys.assemblies WHERE name = 'ClrProcTest';

go
CREATE Function found_product_lost_price(@id_shop int)
returns float
AS
EXTERNAL NAME ClrProcTest."CLR_Funtion_TP_Confectionery.MyProcedure". GetDevicesByShopIdProcedure;
go


select dbo.found_product_lost_price(3);

