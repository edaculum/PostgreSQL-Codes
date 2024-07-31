--İç içe bir sorgu  kullanarak en yüksek bakiyeyi (max(m_bakiye)) bulur ve ardından bu değere sahip olan tüm kayıtları seçer.
SELECT *FROM ec_musteri WHERE m_bakiye = (SELECT max(m_bakiye) FROM ec_musteri)

--ec_musteri tablosunda İstanbul şehrinde bulunan müşterilerden en yüksek bakiyeye sahip olan  müşterileri döndürür.
-- İç içe bir sorguyla İstanbul şehrindeki en yüksek bakiyeyi (max(m_bakiye)) bulur ve ardından bu değere sahip olan tüm kayıtları seçer.
SELECT *FROM ec_musteri
WHERE m_bakiye=(SELECT max(m_bakiye) FROM ec_musteri WHERE m_sehir='İstanbul')


