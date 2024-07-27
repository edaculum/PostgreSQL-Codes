--INNER JOİN işleminin sorguda yapılışı
--ec_musteri tablosunu sorguda çağırınca bu tabloda görünen mesleklerin id olarak değil direkt ilgili mesleğin adının gösterilmesini istiyoruz.
-- Bunu sorguda tablo_adı.sütun_adı şeklinde belirtiriz. Böylece istediğimiz sütunun hangi tabloya ait olduğunu belirtmiş oluyoruz
--on ec_musteri.meslek=ec_meslek.id   ile neye göre birleştireceğimizin şartını yazarız.
-- ec_musteri tablosundaki meslek sütununu; ec_meslek tablosundaki id sütununun karşılığına göre getiririz.

SELECT ec_musteri.m_ad, ec_musteri.m_soyad ,ec_musteri.m_sehir,ec_meslek.meslek_ad
 FROM ec_musteri inner join ec_meslek on ec_musteri.meslek=ec_meslek.id

