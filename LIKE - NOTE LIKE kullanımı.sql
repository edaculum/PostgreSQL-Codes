--LIKE- LIKE NOT işlemi : Bir değerin bir desenle eşleşip eşleşmediğini kontrol eder

--adının içinde ‘a’ harfi olan kayıtları getirir. (Tufan, Nalan)
SELECT *FROM ec_musteri WHERE m_ad LIKE '%a%'

--asının içinde ‘A’ olan kayıtları getirir.
SELECT *FROM ec_musteri WHERE m_ad LIKE '%A%'

--m_ad satırlarına bakar ve içinde ‘e’ geçmeyen kayıtları getirir.
SELECT *FROM ec_musteri WHERE m_ad NOT LIKE '%e%'