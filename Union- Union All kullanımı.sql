--Unioniki veya daha fazla sorgunun sonuç kümesini birleştirmek için kullanılır. Yani yinelenen satırları kaldırır.
--Union All Union ‘dan tek farkı birden fazla kez yinelenen değerleri de döndürmesi. Sonuç kümesinde tüm satırlar, yinelenenler dahil, bulunur.

--ec_bolum2 ve ec_bolum3 tablolarını bir tabloda birleştirir ancak tekrarlanan kayıtları bir defa gösterir
SELECT *FROM ec_bolum2
union
SELECT* FROM ec_bolum3
order by id

--ec_bolum2 ve ec_bolum3 tablolarını bir tabloda birleştirir ve tabloda tüm satırlar, tekrarlananlar dahil, gösterilir
SELECT *FROM ec_bolum2
union all
SELECT* FROM ec_bolum3
order by id
