--Sütun Ekleme işlemi

-- ec_musteri tablosuna m_bakiye sütununu ekleme işlemi
--Ancak m_bakiye sütunundaki satırlara henüz veri girişi yapılmadığı için NULL olarak görünür.
ALTER TABLE ec_musteri
ADD m_bakiye INT;
