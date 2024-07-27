
--CROSS JOIN  iki tabloyu birleştirerek bir kartezyen çarpım (Cartesian product) oluşturan birleştirme türüdür.
-- Bu birleştirme türü, bir tablodaki her satırı diğer tablodaki her satırla birleştirir.

--Aş. sorgu, ec_bolum ve ec_fakulte tablolarını CROSS JOIN ile birleştirir ve iki tablodaki tüm olası kombinasyonları elde eder.
-- Her bölüm her fakülteyle birleştirilir ve sonuç olarak tüm kombinasyonlar döndürülür.
SELECT bolum_ad,ec_fakulte.ad FROM ec_bolum cross join ec_fakulte
