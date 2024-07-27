--Sum() işlevi: sayı türündeki ifadeleri toplayan fonksiyon

--m_bakiye sütunundaki değerlerin toplamını verir
SELECT sum(m_bakiye) FROM ec_musteri

--Sehir bilgisi Ankara olmayanların bakiye toplamlarını verir.
SELECT sum(m_bakiye) FROM ec_musteri WHERE m_sehir !='Ankara'