--WHERE koşul kullanımı
    
--ec_musteri tabosundan sehiri 'Ankara' ve id'si 5 olanlar veya sadece sehiri 'Adana' ya da soyadı 'Kaya' olan tüm kayıtları getirir
SELECT * FROM ec_musteri WHERE m_sehir='Ankara' AND m_id=5 OR m_sehir='Adana' OR m_soyad='Kaya'

--ec_musteri tablosundan m_bakiye değeri 3000'den büyük ya da 2700'den küçük veya eşit olan kayıtları gösterir
SELECT *FROM ec_musteri WHERE m_bakiye>3000 OR m_bakiye<=2700

--ec_musteri tablosundan sehiri 'Ankara' ve bakiyesi 6000'den büyük olanları getirir
SELECT *FROM ec_musteri WHERE m_sehir ='Ankara' AND m_bakiye>6000

