-- veritabanınızda ec_urun adında boş bir tablo oluşturur.
CREATE TABLE ec_urun (
  u_ad VARCHAR(255),
  u_marka VARCHAR(255),
  u_stok INT,
  u_kategori VARCHAR(255)
);

--veritabanınızda  ec_musteri  adında boş bir tablo oluşturur.
CREATE TABLE ec_musteri (
  m_id INT,
  m_ad VARCHAR(255),
  m_soyad VARCHAR(255),
  m_sehir VARCHAR(255)
);

