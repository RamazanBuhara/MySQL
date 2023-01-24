/*========================================
               VERI GIRISI
========================================*/
-- INSERT INTO + tablo adi + VALUES + (std_id CHAR(4),std_name VARCHAR(25),std_age int)
-- Degerleri girerken dikkat edilmesi gereken Tabloyu 
-- olustururken degerleri atadigimiz veri cinsinden olmasi
-- String ifadeleri tek tirnak icinde yaziyoruz.
-- Date data tipi de String gibi tek tirnak icine yazilir,
-- ayrica MySQL 'in default tarih formati YYYY-MM-DD seklindedir.
/*******************************************************
-> Bir field'a kaydedilecek verileri UNIQUE yapmak icin 
 table olustururken field isminin yanina UNIQUE yaziyoruz.
-> Bir field'a kaydedilecek verilerde null olmasin istiyorsak 
table olustururken field isminin yanina NOT NULL yaziyoruz.
*********************************************************/

-- Fen Lisesi ogrencilerinin okul no , isim , derece, adres ve
-- son degisiklik tarihi field'lari olan tablosunu hazirlayalim.
-- okul no field'i UNIQUE olmali, isim field'i da bos birakilmasin.
use sys;
create table fen_lisesi(
okul_no int unique,
isim varchar(25) not null,
derece double,
adres varchar(50),
son_degisiklik_tarihi date
);
select * from fen_lisesi;

insert into fen_lisesi values (101, 'Mehmet Dag', 4.5, 'Ankara', '2023-01-20');
insert into fen_lisesi values (102, 'Berrin Hanım', 4.6, 'Istanbul','2023-01-18');
insert into fen_lisesi values (103, 'Mehmet Erden', 3.9, 'Izmir','2023-01-19');
insert into fen_lisesi values (104, 'Sinan Bey', 4.7, 'Istanbul','2023-01-20');
insert into fen_lisesi values (105, 'Esra Turker', 4.9, 'Ankara','2023-01-18');
insert into fen_lisesi values (106, 'Gulhayat Guder', 4.3, 'Izmir','2023-01-18');
insert into fen_lisesi values (107, 'Berivan Gencdal', 4.3, 'Istanbul','2023-01-18');
insert into fen_lisesi values (108, 'Berivan Gencdal', null, null, null);
insert into fen_lisesi values (null, 'Berivan Gencdal', null, null, null);
insert into fen_lisesi values (null, 'Berivan Gencdal', null, null, null);
insert into fen_lisesi (isim,adres) values ('Abdullah Ak', 'Istanbul');
insert into fen_lisesi (okul_no,isim,adres) values (109, 'Yucel Bey', 'Istanbul');
insert into fen_lisesi (isim,adres,okul_no) values ('Yucel Bey', 'Istanbul', 109);

-- UNIQUE olarak belirledigimiz bir field'a istedigimiz kadar NULL deger kaydedebiliriz
-- ancak data tipi String ise hiclik ifadesini sadece 1 kere kaydeder,
-- diger kayitlarda duplicate hatasi verir.

/* ----------------------------------------------
Q1 : okul_no int, isim , adres, derece fieldlari olan 
anadolu lisesi table olusturun. okul_no CHAR ve UNIQUE, 
isim NOT NULL olacak
------------------------------------------------- */

create table anadolu_lisesi(
okul_no varchar(4) unique,
isim varchar(25) not null,
adres varchar(50),
derece double
);

select * from anadolu_lisesi;
drop table anadolu_lisesi;

insert into anadolu_lisesi values ('1001','Ayse Nuriye','Istanbul', 4.7);
insert into anadolu_lisesi values ('1002','Zafer Bey','Ankara', 4.6);
insert into anadolu_lisesi values ('1003','Furkan Veli Inal','Istanbul', 3.9);
insert into anadolu_lisesi values ('1004','Humeyra Uysal','Izmir', 4.8);
insert into anadolu_lisesi values ('1005','Mehmet Harun','Istanbul', 3.8);
insert into anadolu_lisesi values ('','Berivan Gencdal','Izmir', 4.8);
insert into anadolu_lisesi values ('','Ilyas Bey','Istanbul', 3.8);
insert into anadolu_lisesi values ('1006','Neo Bey','Istanbul', 3.8);
insert into anadolu_lisesi (isim, adres) values ('Berrin Hanım','Ankara');
insert into anadolu_lisesi (okul_no, isim, derece) values ('1007', 'Ersin Bey', 4.9);






