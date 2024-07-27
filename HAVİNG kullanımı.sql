--Having :Group by da Where ifadesi yerine şart yazmak için Having kullanılır.

--sehire gre gruplandırma yapar ve kişi sayısı 3’den büyük olan kayıtları gösterir.
SELECT m_sehir, count(*) as kisi_sayisi FROM ec_musteri group by m_sehir having count(*)>3

--ec_musteri tablosundaki şehirlerin ortalama bakiyelerini hesaplar ve ortalama bakiyesi 5000'den büyük olan veya şehir adında 'u' harfi bulunan şehirleri döndürür.
SELECT m_sehir, avg(m_bakiye) as ortalama_bakiye FROM ec_musteri GROUP BY m_sehir having avg(m_bakiye)>5000 OR m_sehir LIKE '%u%'