--Group By :Gruplandırma ölçütüdür. Aynı değerlere sahip satırları özet satırları halinde gruplandırır,

--Şehire göre o şehirde kaç kişi olduğunu gruplandırır
SELECT m_sehir,COUNT(*) FROM ec_musteri group by m_sehir

--Şehirlere göre gruplama yapılıp her şehrin müşterilerinin toplam bakiyesleri gösterilir
SELECT m_sehir, SUM(m_bakiye) FROM ec_musteri group by m_sehir
