--abs sayının mutlak değerini döndürür, yani 25
SELECT abs(-25)


--bir sayıyı yukarı yuvarlar ve en yakın tam sayıya yükseltir.
--6 sonucunu verir
SELECT ceil(5.2)
--6 sonucunu verir
SELECT ceiling(5.9)
-- -4 sonucunu verir
SELECT ceil(-4.2)


--bir sayıyı aşağı yuvarlar ve en yakın tam sayıya düşürür
-- 5 sonucunu verir
SELECT floor(5.2)
--5 sonucunu verir
SELECT floor(5.98)
-- -5 sonucunu verir
SELECT floor(-4.89)

--pi sayısının değerini verir
SELECT pi()

--sayının üssünü alır . 16 sonucunu verir
SELECT power(2,4)

--0 ile 1 arasında rastgele bir kayan nokta sayısı (float) döndürür
SELECT random()

-- varsayılan olarak sayıyı en yakın tam sayıya yuvarlar
--5 sonucunu döndürür
SELECT round(4.568)
--Belirtilen Ondalık Basamağa Yuvarlama. 4.597752 sayısını 3 ondalık basamağa yuvarlar. 4.598
SELECT round(4.597752,3)


-- bir sayının logaritmasını hesaplar.
SELECT log(75)
--100 sayısının 10 tabanındaki logaritmasını döndürür, yani 2
SELECT log(10,100)

--sayının işaretini döndürür. Sonuç, pozitif sayılar için 1, negatif sayılar için -1, ve sıfır için 0
SELECT sign(25)
SELECT sign(-6)
SELECT sign(0)

--sayının karekökünü döndürür. 4 sonucunu verir
SELECT sqrt(16)
