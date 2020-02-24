--�r�nler tablosuna yeni kay�t ekle
insert into urunler(skt,urunadi,urunfiyati) 
values('2020.02.20','Kitap',15.9)

--�r�nler tablosu t�m verileri getir
select * from urunler

--�r�nler tablosunda alanlarda g�ncelleme yap�yoruz
ALTER TABLE urunler ALTER COLUMN urunadi nvarchar(50)

--Test tablosu olu�tur
create table test( testcolumn nchar(15) null )

--test tablosu
insert into test values('�rnek')

--test tablosu t�m kay�tlar� getir
select * from test

--test Tablosunu tamamen kald�r�r
drop table test

--Test Tablosu i�indeki verileri siler ama tablo kal�r
truncate table test

/*
DML (Data MAnuplation Language) Veri ��elme Dili 
�rnekleri
*/

SElect * from Musteri

insert into Musteri(Musteri_Ad,EvliMi,Telefon) values('Ahmet',1,'12345678912')

--M��teri tablosunda M��teri ad�na g�re g�ncelleme yapar
Update Musteri set Musteri_Ad='Ders' 
where Musteri_Ad = 'Deneme'

--M��teri tablosundan Ad� ders olan kay�tlar� siler
DELETE Musteri where Musteri_Ad='Ders'

