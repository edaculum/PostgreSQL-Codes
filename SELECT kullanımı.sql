--Bir veri tabanından veri almak için SELECT kullanılır.

--ec_musteri tablosundaki tüm kayıtları gösterir
SELECT * FROM ec_musteri;

--ec_müsteri tablosundan m_sehir= Ankara olan kayıtları getirir.
-- Sorgu sonucunda gösterilen tabloda sadece seçilen m_id ve m_ad sütunları görünür
SELECT m_id, m_ad FROM ec_musteri

--ec_musteri tabosundan sehiri 'Ankara' ve id'si 5 olanlar veya sadece sehiri 'Adana' ya da soyadı 'Kaya' olan tüm kayıtları getirir
-- sorguda * kullanıldığı için sonuçta var olan tüm sütunlar istenilen ifade için görünür.
SELECT * FROM ec_musteri WHERE m_sehir='Ankara' AND m_id=5 OR m_sehir='Adana' OR m_soyad='Kaya'