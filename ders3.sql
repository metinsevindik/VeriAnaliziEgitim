--select COUNT(*) from Person.Person

--select avg(unitprice) as Ortalama, 
--		MAX(unitprice) as 'en yüksek', 
--		min(unitprice) as 'En düşük'
--from Sales.SalesOrderDetail



select 
	CONCAT(firstname,' ',MiddleName,' ',lastname) as 'Kişi Adı'
	,
	LEFT(firstname,3) as 'Soldan 3 karakter'
	,
	right(firstname,3) as 'Sağdan 3 karakter'
	,
	*
from Person.Person
where 
--FirstName like 'A%'
FirstName like 'WA%'

--Eposta adresi oluştur
select 
lower( CONCAT(firstname,'.',lastname,'@saglik.gov.tr') ) 
from Person.Person


------------------------------------------------
select PersonType,count(*) as 'kişi sayısı' 
from 
person.Person
where PersonType != 'EM' 
group by PersonType
having count(*)<500
order by PersonType
----------------------------------------------------

-------
-------------------JOIN-----------------------------------
select p.ProductID as 'ÜrünID',
p.Name as 'Ürün Adı',
s.ProductID as 'Satılan Ürün ID',
s.OrderQty as 'Satılan Ürün Adedi' 
from Sales.SalesOrderDetail as s
inner join Production.Product as p 
on s.ProductID=p.ProductID
-----------------------------------------------------

-------------------left JOIN-----------------------------------
select p.ProductID as 'ÜrünID',
p.Name as 'Ürün Adı',
s.ProductID as 'Satılan Ürün ID',
s.OrderQty as 'Satılan Ürün Adedi' 
from  Production.Product as p
left join Sales.SalesOrderDetail as s 
on s.ProductID=p.ProductID
-----------------------------------------------------

-------------------right JOIN-----------------------------------
select p.ProductID as 'ÜrünID',
p.Name as 'Ürün Adı',
s.ProductID as 'Satılan Ürün ID',
s.OrderQty as 'Satılan Ürün Adedi' 
from  Production.Product as p
right join Sales.SalesOrderDetail as s 
on s.ProductID=p.ProductID
-----------------------------------------------------


select distinct(ProductID) from Sales.SalesOrderDetail 

select * from Production.Product


----------------- Store Procedure ----------------------------------


-- Prosedür çalıştırır
exec kisiEkle 'Metin','Sevindik','5455151515'

-- Döngü yapılır 
declare @count int
declare @isim nvarchar(50)
set @count=1
while (@count<10)
begin
	print 'Döngü ' + convert(varchar, @count)
	set @count=@count+1

	set @isim='Öğrenci,' + convert(varchar, @count)
	exec kisiEkle @isim,'Sevindik','5455151515'
end 


SELECT * FROM Ogrenci

--Convert örnek
select convert(int, '2') as 'Rakam', convert(nvarchar, 2) as 'Yazı'

--View oluştur
create view basariliOgrenciler as 
select top 5 * from ogrenci


-- Viewler tablo gibidir 
-- StoreProcedure ler çalıştırılır
select * from basariliOgrenciler -- View
exec kisiEkle --Store Procedure



