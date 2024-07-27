--Count() işlevi :belirtilen bir ölçütle eşleşen satır sayısını döndürür. Sayma için kullanılır.

--ec_musteri tablosundaki bütün satırları sayar ve sayıyı döndürür
--Count(*) da NULL değerler de sayılır.
SELECT Count(*) FROM ec_musteri

--tabloda m_id değerine bakarak müşteri sayısını döndürür.
-- Ancak count(*) dan farklı olarak NULL değerler sayılmaz.
SELECT Count(m_id) FROM ec_musteri;

--Sadece şehiri Ankara olan satırları sayar ve sayıyı döndürür
SELECT count(*) FROM ec_musteri WHERE m_sehir='Ankara'

--sehiri 'Ankara' ve aynı zamanda bakiyesi 5000'den büyük olanların sayısını döndürür
SELECT count(*) FROM ec_musteri WHERE m_sehir='Ankara' AND m_bakiye>5000