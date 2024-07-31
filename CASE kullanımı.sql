--ec_dersler tablosundaki verileri kullanarak, derslerin adlarını ve bölümlerini listelemektedir.
-- Sorgu, bolum_id sütununa göre bölümlerin adlarını belirler ve sonuçları ders_ad sütununa göre sıralar.CASE ifadesinin sonucu bolumler adlı bir sütun olarak adlandırılır.

SELECT ders_ad, bolum_id,
      case
          when bolum_id=1 then 'Yazılım'
          when bolum_id=2 then 'Mekatronik'
          when bolum_id=3 then 'Elektronik'
          when bolum_id=4 then 'Makine'
End as bolumler FROM ec_dersler ORDER BY ders_ad;


--case'de else kullanımı
--eğer verilen durumların dışında bir değer varsa ona 'Makine' yazdırır
SELECT ders_ad, bolum_id,
      case
          when bolum_id=1 then 'Yazılım'
          when bolum_id=2 then 'Mekatronik'
          ELSE 'Makine'
End as bolumler FROM ec_dersler ORDER BY ders_ad;



