--Güncelleme işlemi
--update işlemlerinde WHERE yazılmazsa tüm kayıtlar güncellenir. O yüzden koşul-şart koyulmalı

-- m_id ‘si 1 olan değerin m_bakiye ‘sini 5400 olarak değiştirir
UPDATE ec_musteri
SET m_bakiye = '5400'
WHERE m_id = '1';

--birden fazla sütunu güncelleştirme
--m_id 3 için m_bakiye ve m_sehir güncellenir
UPDATE ec_musteri
SET m_bakiye = 8600,  m_sehir= 'Edirne'
WHERE m_id=3;
