--Intersect  iki tablonun kesişimini döndürür.Kesişen satırlar, tüm sütun değerlerinin aynı olduğu satırlardır.
--Except Birinci sorgunun sonuç kümesinden ikinci sorgunun sonuç kümesini çıkarır (sadece birinci sorguda bulunan satırları) döndürür.


-- ec_bolum2 adında tablo oluşturu
CREATE TABLE ec_bolum2(
  id INT,
  adi VARCHAR(255)
);
--tabloya veri eklemesi yapar
INSERT INTO ec_bolum2 (id,adi)
VALUES
(1,'Hemşirelik'),
(2,'Mimarlık'),
(3,'Yazılım'),
(4,'Pdr'),
(5,'İktisat'),
(6,'Biyoloji');


--ec_bolum3 adında tablo oluşturur
CREATE TABLE ec_bolum3(
  id INT,
  adi VARCHAR(255)
);
--tabloya veri eklemesi yapar
INSERT INTO ec_bolum3 (id,adi)
VALUES
(1,'Matematik'),
(2,'Mimarlık'),
(3,'Kimya'),
(4,'Edebiyat'),
(5,'Coğrafya'),
(6,'Biyoloji');




-- ec_bolum2 tablosu ile ec_bolum3 tablosunun kesişimini(ortak kayıtlarını) verir
SELECT *FROM ec_bolum2
intersect
SELECT *FROM ec_bolum3

--ec_bolum2 tablosunda olup ec_bolum3 tablosunda olmayan kayıtları verir
SELECT *FROM ec_bolum2
except
SELECT *FROM ec_bolum3

