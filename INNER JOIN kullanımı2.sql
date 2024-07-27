
--Mühendislik fakültesindeki bölümleri listelemek istiyorum. Hem alt sorgu hem de INNER JOİN kullanabiliriz.
SELECT ec_bolum.bolum_id, ec_bolum.bolum_ad, ec_fakulte.ad FROM ec_bolum inner join ec_fakulte on ec_bolum.bolum_f=ec_fakulte.id
WHERE bolum_f=(SELECT id FROM ec_fakulte WHERE ad='Mühendislik')

--her bir fakültede kaç tane bölümün olduğunu gösteren sorgu
SELECT bolum_f, count(*) FROM ec_bolum GROUP BY bolum_f ORDER BY bolum_f

--yukarıdaki sorguya inner join kullanımı eklenerek her bir fakültede kaç bölüm olduğunu gösteren sorgu
SELECT ec_fakulte.ad, count(*) FROM ec_bolum inner join ec_fakulte on ec_bolum.bolum_f=ec_fakulte.id
GROUP BY ec_fakulte.ad

-- inner join ile bölüm tablosunda en fazla bölumu bulunan fakültenin ismini listeleyen sorgu
SELECT ec_fakulte.ad ,count(*) as ct FROM ec_fakulte inner join ec_bolum on ec_fakulte.id = ec_bolum.bolum_f
GROUP BY ec_fakulte.ad ORDER BY ct desc limit 1



