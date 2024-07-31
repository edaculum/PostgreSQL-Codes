--'D' karakterinin ASCII değerini döndürür
SELECT ASCII('D') as d_değeri


--concat ile  birden fazla metinsel ifadeler birleştirilir.
SELECT concat('Postgre', ' SQL', ' Dersleri')
SELECT concat ('Post','gre','SQL') as kelime


--concat_ws ile ilk argüman, ayırıcı olarak kullanılır ve geri kalan argümanlar bu ayırıcı ile birleştirilir.
-- 17-07-2024 sonucunu verir
SELECT concat_ws('-','17','07','2024')
--PostgreSQL;Dersi;1 sonucunu verir
SELECT concat_ws(';','PostgreSQL', 'Dersi', '1')


--'PostgreSQL Dersi' metin dizisinin başından itibaren 4 karakteri döndürür, yani 'Post'.
SELECT left('PostgreSQL Dersi',4)
--'PostgreSQL Dersi' metin dizisinin sonundan itibaren 9 karakteri döndürür, yani 'SQL Dersi'
SELECT right('PostgreSQL Dersi',9)
--metnin karakter uzunluğunu döndürür. 16
SELECT length('PostgreSQL Dersi')


--'Hello World' metin dizisinde 'World' kelimesini 'PostgreSQL' ile değiştirir, yani 'Hello PostgreSQL'.
SELECT REPLACE('Hello World', 'World', 'PostgreSQL');
--ec_bolum3 tablosunda adi sütunundaki 'i' leri 'ı' olarak değişir
SELECT id,replace(adi,'i','ı') FROM ec_bolum3 order by id


--ec_fakulte tablosunda ad sütunundaki verileri tersten yazdırır
SELECT reverse(ad) FROM ec_fakulte


--'PostgreSQL' metin dizisinin 1. karakterinden başlayarak 4 karakter uzunluğunda bir alt dize döndürür, yani 'Post'.
SELECT substring('PostgreSQL', 1, 4);

--Lower; tüm karakterleri küçük harfle yazdırır Upper;tüm karakterleri büyük harfle yazdırır
SELECT lower(ad) as kücük_harfle,upper(ad) as buyuk_harfle FROM ec_fakulte