--Demo
/*
Market adında bir veritabanı oluşturunuz....

Müşteri Tablosu oluşturan bir sql sorgusu
[musteriID,ad,soyad]

Urun tablosu oluşturan sql sorgusu
[urunID,urunAd,urunFiyat]

Satis tablosu oluşturan sql sorgusu
[satisID,musteriId,urunId,Miktar]

Aşağıdaki sorgulara cevap veren view,fonksiyon,procedure oluşturulması
-Satış işlemi yapan Store Procedure
-Toplam Satış Sayısını getiren view
-Toplam Satış Tutarı
-En çok satış yapan müşteri
-En çok satılan ürün
*/
create table musteri(
	musteriID int identity(1,1) not null,
	ad nvarchar(50) null,
	soyad nvarchar(50) null,
	primary key(musteriID)
)

create table urun(
	urunId int identity(1,1) not null,
	urunAd nvarchar(50) null,
	urunFiyat money null,
	primary key(urunId)
)

create table satis(
	satisId int identity(1,1) not null,
	musteriId int not null,
	urunId int not null,
	miktar int not null,
	primary key(satisId)
)


---Satış ekleyen Store Procedure
create procedure satisEkle
@urunId int,
@musteriId int
 as
insert into satis(urunId,musteriId) values(@urunId,@musteriId)
---------------------
-- Satış yap
exec satisEkle 6,125,3

select * from satis

-------  Toplam Satış Sayısı View oluştur
Create view toplamSatis as
Select count(*) as Toplam from satis

--View çalıştır
select * from toplamSatis


-- Toplam satış tutarı
select urun.urunAd,
urun.urunFiyat,
satis.miktar, 
urun.urunFiyat*satis.miktar as Toplam  from 
satis join urun on satis.urunId=urun.urunId


select SUM( urun.urunFiyat*satis.miktar) as GenelToplam  from 
satis join urun on satis.urunId=urun.urunId


-- En çok satış yapan müşteri
select musteri.ad,count(*)
from satis
join musteri on musteri.musteriID=satis.musteriId
group by musteri.ad

-- Hangi ürün kaç adet satıldı
select urun.urunAd,sum(satis.miktar)
from satis
join urun on urun.urunId=satis.urunId
group by urun.urunAd
