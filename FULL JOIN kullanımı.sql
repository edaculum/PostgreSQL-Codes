--id'si 6 olan bir meslek yok. Baran'ın mesleğini 6 olarak tabloya ekledik. FULL JOİN'in yapısını daha iyi anlamak için
INSERT INTO ec_musteri (m_id, m_ad, m_soyad, meslek) VALUES (11,'Baran','Yücedağ',6);


--FULL join; LEFT OUTER ve RIGHT OUTER JOIN’in birleştirilmiş hali olarak düşünün.
--İki tablodaki tüm kayıtları döndürür. Fakat karşılığı olmayan kolonlar boş olarak döner (NULL ataması olur)
SELECT ec_musteri.m_ad, m_soyad ,ec_musteri.m_sehir, ec_meslek.meslek_ad FROM ec_musteri full join ec_meslek
on ec_musteri.meslek =ec_meslek.id

