
-- 'ec_fakulte' tablosuna 'ec_bolum' tablosunda yer almayan 2 tane daha fakülte ekledik
INSERT INTO ec_fakulte (id,ad)
values (4,'Sağlık Bilimleri'),
       (5,'Tıp');

--LEFT JOİN'de, sol tablodaki tüm satırları ve sağ tablodan eşleşen satırları döndürür.
-- Eşleşen satır yoksa, sağ tablodaki sütunlar NULL olur

--join left ile bolum_f ile fakulte'deki id yi birleştiririz
--sola fakülteyi yazdık ( FROM fakulte left join bolum )
--Aş. sorgu ile LEFT JOİN de sol tarafta bulunan alanlar sağ tarafta yoksa oralar NULL olur.

SELECT ec_bolum.bolum_id, ec_bolum.bolum_ad,ec_fakulte.ad FROM ec_fakulte
left join ec_bolum on ec_fakulte.id=ec_bolum.bolum_f


