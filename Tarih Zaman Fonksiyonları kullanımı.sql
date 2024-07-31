--  tarih bilgisi içeren tablonun oluşturulması
--otomatik artan bir id sütunu oluşturmak için SERIAL veri türünü kullanırız
CREATE TABLE ec_kitaplar(
  id SERIAL,
  ad VARCHAR(255),
  yazar VARCHAR(255),
  tarih  date NOT NULL,
   PRIMARY KEY (id)
);

--TO_DATE('30-08-2020', 'DD-MM-YYYY') fonksiyonu 2 argüman alır
--tabloya veri girişi
INSERT INTO ec_kitaplar(ad, yazar, tarih)
VALUES
    ('Palto','Vasilyeviç Gogol',to_date('30-08-2020','DD-MM-YYYY')),
    ('Kuyucaklı Yusuf', 'Sabahattin Ali',to_date('30-08-2020','DD-MM-YYYY') ),
    ('Yeraltından Notlar','Dostoyevski',to_date('31-08-2020','DD-MM-YYYY')),
    ('Tuna Kılavuzu','Jules Verne',to_date('31-08-2020','DD-MM-YYYY')),
    ('İki Şehrin Hikayesi','Charles Dickens', to_date('01-09-2020','DD-MM-YYYY')),
    ('Satranç','Zweig',to_date('01-09-2020','DD-MM-YYYY'));


SELECT *FROM ec_kitaplar;

-- günün tarihini DATE veri türü olarak döndürür
--2024-07-28 sonucunu verir
SELECT current_date;

-- geçerli saati döndürür.
-- 15:01:16.215511+00 sonucunu verir
SELECT current_time;

--geçerli tarih ve saati döndürür.
--2024-07-28 15:03:34.670860 +00:00 sonucnu verir
SELECT now();

--şu an geçerli olan tarih ile girilen tarih arasındaki süreyi hesaplar
--'5 years 3 mons 8 days 0 hours 0 mins 0.0 secs' sonucunu döndürür
SELECT age(to_date ('20.04.2019','DD.MM.YYYY'));

--ec_kitaplar tablosundan kitap adını (ad), tarihini (tarih) ve bu tarihten geçerli tarihe (NOW()) kadar geçen süreyi (AGE) döner.
SELECT ad,tarih,age(now(),tarih) FROM ec_kitaplar;

