--LIMIT: döndürülecek en fazla kayıt sayısını sınırlamak için kullanılır.
----OFFSET : döndürülecek kayıtları seçmeye nereden başlanacağını belirtmek için kullanılır.

--ec_musteri tablosundan yalnızca ilk 5 kaydı gösterir
SELECT * FROM ec_musteri order by m_id LIMIT 5;

-- ec_musteri tablosundaki kayıtları m_id sütununa göre sıralar ve sıralanmış sonuçlar arasından 3. kayıttan başlayarak 5 kayıt döndürür
SELECT * FROM ec_musteri order by m_id LIMIT 5 OFFSET 2;

