
--ec_musteri tablosundan bakiyesi tüm müşteriler arasındaki ortalama bakiyenin üzerinde olan kayıtları gösterir.
SELECT m_ad, m_sehir, m_bakiye
FROM ec_musteri
WHERE m_bakiye > (SELECT AVG(m_bakiye) FROM ec_musteri);

--FROM İfadesinde Alt Sorgu (Türetilmiş Tablolar)
--Her şehirdeki toplam müşteri sayısını gösteren bir geçici tablo oluşturup, bu tabloyu ana sorguda kullanalım.
SELECT sehir_bilgisi.m_sehir, sehir_bilgisi.musteri_sayisi
FROM (SELECT m_sehir, COUNT(*) AS musteri_sayisi FROM ec_musteri GROUP BY m_sehir) AS sehir_bilgisi;


--Her şehirin toplam bakiyesine bakar ve bu şehirlerden tüm şehirlerin ortalama toplam bakiyesinden fazla olanları gösterir
SELECT m_sehir, SUM(m_bakiye) AS toplam_bakiye FROM ec_musteri
GROUP BY m_sehir
HAVING SUM(m_bakiye) > (SELECT AVG(toplam_bakiye) FROM (SELECT SUM(m_bakiye) AS toplam_bakiye FROM ec_musteri GROUP BY m_sehir) AS alt);

