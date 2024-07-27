--Min() → seçilen sütunun en küçük değerini döndüren metottur.
--Max() → seçilen sütunun en büyük değerini döndüren metottur.

--ec_musteri tablosundaki m_bakiye bilgisinin en büyük ve en küçük değerini döndürür
SELECT min(m_bakiye),max(m_bakiye) FROM ec_musteri

--Sehir bilgisi Ankara olan satırlardan en büyük bakiye değerini döndürür
SELECT max(m_bakiye) FROM ec_musteri WHERE m_sehir='Ankara'
