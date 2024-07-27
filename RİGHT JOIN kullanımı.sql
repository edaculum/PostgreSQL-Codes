--RIGHT JOIN ifadesi, sağ tablodaki tüm satırları ve sol tablodan eşleşen satırları döndürür.
-- Eşleşen satır yoksa, sol tablodaki sütunlar NULL olur.
-- aş. sorguda sağdaki tablo (ec_fakulte) için tüm satırları döndürür ve eşleşen satırlar yoksa bile gösterir.
SELECT ec_fakulte.id,ec_fakulte.ad, ec_bolum.bolum_ad FROM ec_bolum
right join ec_fakulte on ec_fakulte.id=ec_bolum.bolum_f

--satırlardaki sadece NULL değerleri görmek istiyorsak,
-- yukarıdaki sorguya bir WHERE koşulu ile bunu belirtiriz.
SELECT ec_fakulte.id,ec_fakulte.ad, ec_bolum.bolum_ad FROM ec_bolum
right join ec_fakulte on ec_fakulte.id=ec_bolum.bolum_f WHERE ec_bolum.bolum_f is null;
