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
