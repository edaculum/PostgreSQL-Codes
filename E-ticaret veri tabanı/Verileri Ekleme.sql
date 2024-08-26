--Mevcut Sütunu TIMESTAMP ile Güncelleme yaptık
-- TIMESTAMP veri türü, hem tarih hem de saat bilgisini içerir.
ALTER TABLE ec_orders
ALTER COLUMN date TYPE TIMESTAMP USING date::TIMESTAMP;


-- Kategoriler
INSERT INTO ec_categories (seq, name)
VALUES
(1,'Elektronik'),
(2,'Kitaplar'),
(3,'Giysiler'),
(4,'Mobilya'),
(5,'Oyuncaklar'),
(6,'Bahçe Ürünleri');

select *from ec_categories;



-- Müşteriler
INSERT INTO ec_customers (name, surname)
VALUES
('Ali', 'Yılmaz'),
('Ayşe', 'Kaya'),
('Mehmet', 'Demir'),
('Damla', 'Seçkin'),
('Nurgül','Kara'),
('Umut','Güler'),
('Zeynep','Kılıç');

select *from ec_customers;


-- Ürünler
INSERT INTO ec_products (seq, name, price, description, stock, imageUrl, category_id)
VALUES
(1, 'Akıllı Telefon', 1500.00, 'Yeni model akıllı telefon', 25, 'https://cdn.thewirecutter.com/wp-content/media/2023/06/bestlaptops-2048px-9765.jpg?auto=webp&quality=75&width=980&dpr=1.5', 1),
(2, '4K Televizyon', 2500.00, 'Ultra HD 4K Televizyon', 15, 'https://ideacdn.net/idea/gi/65/myassets/products/637/philips-55pus8808-55-4k-uhd-android-tv-9749_min.jpeg?revision=1719755523', 1),
(3, 'Python Programlama Kitabı', 60.00, 'Python programlamaya giriş kitabı', 50, 'https://i.dr.com.tr/cache/500x400-0/originals/0000000694609-1.jpg', 2),
(4, 'Kışlık Mont', 200.00, 'Sıcak tutan kışlık mont', 40, 'https://img-incommerce-yargici.mncdn.com/Content/Images/Thumbs/22179245_kahve-mikrofiber-mont-23kkmt5301x085.jpeg', 3),
(5, 'L Koltuk', 800.00, 'Şık ve konforlu L koltuk', 20, 'https://berrakmobilya.com/wp-content/uploads/2023/10/Lusso-Yatakli-Kose-Koltuk-1.jpg ', 4),
(6, 'Legolar', 120.00, 'Çocuklar için çeşitli lego setleri', 30, 'https://ideacdn.net/idea/eg/91/myassets/products/735/60375-01.jpg?revision=1697143329', 5),
(7, 'Bahçe Masası', 350.00, 'Dayanıklı bahçe masası', 10, 'https://ideacdn.net/idea/jo/85/myassets/products/155/540a331e07644b9aa5939ef113d82de5-jpg.jpeg?revision=1697143329', 6);
-- Ürünler' biraz daha veri ekledik
INSERT INTO ec_products (seq, name, price, description, stock, imageUrl, category_id)
VALUES
(8, 'Bluetooth Kulaklık', 300.00, 'Kablosuz Bluetooth kulaklık', 60, 'https://cdn.cimri.io/image/1200x1200/apple-airpods-pro-bluetooth-kulaklik_449227307.jpg', 1),
(9, 'Dijital Kamera', 2000.00, 'Yüksek çözünürlükte dijital kamera', 10, 'https://m.media-amazon.com/images/I/61UjoEXzYoL._AC_UF1000,1000_QL80_.jpg', 1),
(10, 'Kadın Spor Ayakkabı', 250.00, 'Konforlu ve şık kadın spor ayakkabı', 45, 'https://cdn.marjin.com.tr/UserFiles/Fotograflar/org/509176-kadin-sneaker-spor-ayakkabi-virez-bej-renk-virez-2.jpg', 3),
(11, 'Erkek Kol Saati', 500.00, 'Şık ve zarif erkek kol saati', 20, 'https://www.danielkleinofficial.com/dk1135204-premium-erkek-kol-saati-53817-42-B.png', 3),
(12, 'Oyuncak Tren', 3000.00, 'En yeni model oyun konsolu', 8, 'https://cdn03.ciceksepeti.com/cicek/kcm17487845-1/XL/oyuncak-tren-klasik-tren-isikli-15-parca-kcm17487845-1-f0a625bc3c9f4d45ada6b4daff34c974.jpg', 5),
(13, 'Ahşap Kitaplık', 1200.00, 'Şık ve kullanışlı ahşap kitaplık', 15, 'https://ideacdn.net/idea/kd/73/myassets/products/078/il-794xn-3041875628-h6rk.jpg?revision=1697143329', 4),
(14, 'Yatak Takımı', 2500.00, 'Konforlu ve şık yatak takımı', 10, 'https://platincdn.com/159/pictures/CHONTVPSKW6232022104248_9f1cd473-c1cd-4aac-b7be-7ea102d2913d.jpg', 4),
(15, 'Sırt Çantası', 150.00, 'Geniş ve kullanışlı sırt çantası', 50, 'https://akn-barcin.a-cdn.akinoncloud.com/products/2023/07/18/1149106/fd66627e-1921-42d0-9893-2cfacb700887_size900x900_cropCenter.jpg', 3),
(16, 'Dış Mekan Lambası', 400.00, 'Bahçe için dış mekan lambası', 25, 'https://cdn03.ciceksepeti.com/cicek/kcm7489345-1/L/sl-10591-3-adet-sokak-dis-mekan-aydinlatma-gunes-enerjili-solar-bahce-lambasi-sensorlu-led-isik-34cm-kcm7489345-1-05060572923d4fe3b0c1719ed618ed24.jpg', 6);


select *from ec_products order by id;



-- Siparişler
INSERT INTO ec_orders (date, customer_id)
VALUES
('2024-08-01 10:30:00', 1),  -- Ali Yılmaz'ın siparişi
('2024-08-02 14:45:00', 2),  -- Ayşe Kaya'nın siparişi
('2024-08-03 09:00:00', 3),  -- Mehmet Demir'in siparişi
('2024-08-04 16:20:00', 4),  -- Damla Seçkin'in siparişi
('2024-08-05 11:15:00', 5),  -- Nurgül Kara'nın siparişi
('2024-08-06 13:30:00', 6),  -- Umut Güler'in siparişi
('2024-08-07 15:00:00', 7);  -- Zeynep Kılıç'ın siparişi


select *from ec_orders;




-- Sipariş Öğeleri
INSERT INTO ec_order_items (order_id, product_id, price, count)
VALUES
(1, 1, 15000, 1),  -- Ali Yılmaz'ın siparişinde 1 adet Akıllı Telefon
(1, 3, 60, 2),    -- Ali Yılmaz'ın siparişinde 2 adet Python Programlama Kitabı
(2, 2, 20000, 1),  -- Ayşe Kaya'nın siparişinde 1 adet 4K Televizyon
(3, 4, 1350, 1),   -- Mehmet Demir'in siparişinde 1 adet Kışlık Mont
(4, 5, 8200, 1),   -- Damla Seçkin'in siparişinde 1 adet L Koltuk
(5, 6, 2860, 3),   -- Nurgül Kara'nın siparişinde 3 adet Legolar
(6, 7, 5000, 1),   -- Umut Güler'in siparişinde 1 adet Bahçe Masası
(7, 1, 22000, 1),  -- Zeynep Kılıç'ın siparişinde 1 adet Akıllı Telefon
(7, 5, 16400, 2);   -- Zeynep Kılıç'ın siparişinde 2 adet L Koltuk



select *from ec_order_items order by id;