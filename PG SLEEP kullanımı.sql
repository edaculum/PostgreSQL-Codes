-- belirli bir süre boyunca mevcut işlemi duraklatmak için kullanılır.Süreyi saniye cinsinden alır.
SELECT pg_sleep (5);
SELECT *FROM ec_bolum


--5 kez bir döngü içinde 2 saniye bekler ve her beklemeden sonra bir sayaç değeri yazdırır
--counter değişkenini 1'den 5'e kadar her değeri için yazdırır ve her adımda 2 saniye bekler.
DO $$
DECLARE
    counter INT := 1;
BEGIN
    WHILE counter <= 5 LOOP
        RAISE NOTICE 'Counter: %', counter;
        PERFORM pg_sleep(2);
        counter := counter + 1;
    END LOOP;
END $$;
