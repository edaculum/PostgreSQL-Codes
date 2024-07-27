--Avg() İşlevi: bir sütuna ait değerlerin ortalama değerini döndürür

--ec_musteri tablosundaki m_bakiye değerlerinin ortalamasını döndürür
SELECT avg(m_bakiye) FROM ec_musteri

--sehiri 'İstanbul' olan kayıtların m_bakiye değerlerinin ortalamasını döndürür
SELECT avg(m_bakiye) FROM ec_musteri WHERE m_sehir= 'İstanbul'

--Ortalama bakiyeyi 2 ondalık basamağa yuvarlanmış olarak döndürmek istersek ::NUMERIC operatörünü kullanırız
SELECT AVG(m_bakiye)::NUMERIC(10,2)
FROM ec_musteri;
