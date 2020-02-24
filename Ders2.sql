Select sales.SalesOrderDetailID,sales.ProductID,pr.Name
from Sales.SalesOrderDetail as sales
join Production.Product as pr on pr.ProductID=sales.ProductID
where 
sales.UnitPrice>1000 and OrderQty=1 and sales.ProductID>850



--View oluşturulur
create view [UrunSatisDetay] AS
Select sales.SalesOrderDetailID,sales.ProductID,pr.Name
from Sales.SalesOrderDetail as sales
join Production.Product as pr on pr.ProductID=sales.ProductID
where 
sales.UnitPrice>1000 and OrderQty=1 and sales.ProductID>850


Select * from UrunSatisDetay

drop view UrunSatisDetay


Select sales.SalesOrderDetailID,sales.ProductID,pr.Name
from Sales.SalesOrderDetail as sales
join Production.Product as pr on pr.ProductID=sales.ProductID
where 
sales.UnitPrice>1000 and OrderQty=1 and sales.ProductID>850
Order by sales.ProductID desc


select count(*) from urunsatisdetay

select 
count(distinct(UrunSatisDetay.Name)),
count(distinct(UrunSatisDetay.SalesOrderDetailID))
 from UrunSatisDetay

select * from UrunSatisDetay

select * from sales.SalesOrderDetail

select distinct(UrunSatisDetay.Name) from UrunSatisDetay

--urunsatisdetay view güncelleme işlemi
alter view urunsatisdetay as
select * from Sales.SalesOrderDetail

select * from urunsatisdetay

-- CTRL+Shift+R
