--DELETE: Tabloyu silmeden bir tablodaki satırları silmek için kullanılır.

--ec_musteri tablosundaki tüm satırları siler
DELETE FROM ec_musteri;

--istenilen satırı siler. m_id=2 olan satır silinir
DELETE FROM ec_musteri WHERE m_id=2;