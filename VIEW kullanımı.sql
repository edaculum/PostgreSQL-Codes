--view oluşturma işlemi . fakulte_boluview adında oluşturur.
create view fakulte_bolum_view
AS
SELECT bolum_id,bolum_ad, ec_fakulte.ad FROM ec_fakulte
inner join ec_bolum on ec_bolum.bolum_f = ec_fakulte.id;

--view'i çalıştırma
SELECT *FROM fakulte_bolum_view;

--viewi silme işlemi
DROP VIEW IF EXISTS fakulte_bolum_view;



--bolum_dersler_view adıyla oluşturulan bu görünüm, üç tabloyu (ec_bolum, ec_fakulte, ec_dersler) içeren ve belirtilen sütunları seçen bir sanal tablo oluşturur.
create view bolum_dersler_view
AS
SELECT ec_bolum.bolum_id,ec_bolum.bolum_ad, ec_fakulte.ad, ec_dersler.ders_ad FROM ec_bolum
inner join ec_fakulte on ec_bolum.bolum_f = ec_fakulte.id
inner join ec_dersler on ec_bolum.bolum_id= ec_dersler.bolum_id;

--view'i çalıştırma
SELECT *FROM bolum_dersler_view;


--“fakulte_bolum_view” görünümünden sadece "Fen Edebiyat" fakültesine ait bölümleri getirecektir.
SELECT * FROM fakulte_bolum_view
WHERE ad = 'Fen Edebiyat';


--ec_dersler tablosundan ders adı uzunluğu 12 karakterden fazla olan dersleri filtreleyerek, bu derslerin adını, kontenjanını ve bölüm ID'sini içeren bir sanal tablo (görünüm) oluşturur.
create view dersler_view
AS
SELECT ec_dersler.id,  ec_dersler.ders_ad, ec_dersler.kontenjan, ec_dersler.bolum_id FROM ec_dersler WHERE length(ders_ad)>12
WITH CHECK option ;

--viewi çalıştırma
SELECT * FROM dersler_view ;

--Aş. sorgu ile ekleme işlemi yapmak istediğimizde bu veriyi eklemez çünkü 12 karakterden daha az bir veri olduğu için.
INSERT INTO dersler_view(ders_ad)
VALUES ('Mesleki İng');


--Ancak aş. veri eklenir çünkü karakter uzunluğu 12’yi geçiyor.
INSERT INTO dersler_view(ders_ad)
VALUES ('Mesleki İngilizce');



















