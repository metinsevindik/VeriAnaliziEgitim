
-- Adına göre satış yapılan ürünlerin toplam satış miktarı
select SUM(s.OrderQty)
from 
Sales.SalesOrderDetail as s
inner join Production.Product as p 
on s.ProductID=p.ProductID
where p.Name like '%ROAD%'



create function SatisMiktariToplami()
returns int
as               
begin
	return 		(select SUM(s.OrderQty)
		from 
		Sales.SalesOrderDetail as s
		inner join Production.Product as p 
		on s.ProductID=p.ProductID
		where p.Name like '%ROAD%')
end 


select dbo.SatisMiktariToplami()


--------------- Parametreli Fonksiyon -----------

create function SatisMiktariToplamiByUrunAdi(@urunAdi nvarchar(20) null)
returns int
as               
begin
	return 		(select SUM(s.OrderQty)
		from 
		Sales.SalesOrderDetail as s
		inner join Production.Product as p 
		on s.ProductID=p.ProductID
		where p.Name like '%'+@urunAdi+'%')
end 

select 
dbo.SatisMiktariToplamiByUrunAdi('black') as Parametreli,
dbo.SatisMiktariToplami() as Parametresi

