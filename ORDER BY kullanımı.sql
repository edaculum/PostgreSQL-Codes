--Order By: Varsayılan olarak kayıtları artan düzende sıralar
--ORDER BY DESC:  azalan düzende sıralar

--m_ad sütunu alfabetik sıraya göre sıralanır ve istenen sütunlar için kayıtlar gösterilir
SELECT m_ad, m_sehir FROM ec_musteri order by m_ad

--ec_musteri tablosundaki m_bakiye sütununu azalan düzende sıralar ve kayıtlar tüm sütunlar için gösterilir
SELECT * FROM ec_musteri ORDER BY m_bakiye DESC;