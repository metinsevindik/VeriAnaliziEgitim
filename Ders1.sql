--Ürünler tablosuna yeni kayýt ekle
insert into urunler(skt,urunadi,urunfiyati) 
values('2020.02.20','Kitap',15.9)

--Ürünler tablosu tüm verileri getir
select * from urunler

--Ürünler tablosunda alanlarda güncelleme yapýyoruz
ALTER TABLE urunler ALTER COLUMN urunadi nvarchar(50)

--Test tablosu oluþtur
create table test( testcolumn nchar(15) null )

--test tablosu
insert into test values('örnek')

--test tablosu tüm kayýtlarý getir
select * from test

--test Tablosunu tamamen kaldýrýr
drop table test

--Test Tablosu içindeki verileri siler ama tablo kalýr
truncate table test

/*
DML (Data MAnuplation Language) Veri Ýþelme Dili 
örnekleri
*/

SElect * from Musteri

insert into Musteri(Musteri_Ad,EvliMi,Telefon) values('Ahmet',1,'12345678912')

--Müþteri tablosunda Müþteri adýna göre güncelleme yapar
Update Musteri set Musteri_Ad='Ders' 
where Musteri_Ad = 'Deneme'

--Müþteri tablosundan Adý ders olan kayýtlarý siler
DELETE Musteri where Musteri_Ad='Ders'

