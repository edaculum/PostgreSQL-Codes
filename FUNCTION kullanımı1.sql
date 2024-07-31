--fonksiyon, iki tam sayı alır ve bu sayıların toplamını hesaplayarak geri döner.
CREATE FUNCTION toplam(s1 int, s2 int)
RETURNS int -- fonksiyonun dönüş türü int (tam sayı) olacaktır
language plpgsql
as $$
    declare sonuc int;

begin
    sonuc:= s1+s2;
    return sonuc;

end $$;


--fonksiyonu çağırma
select toplam(45,30);



-- kitapların kdv'li halini görmek istiyorum.  %8 olsun
create function kitap_kdvli (fiyat float)
RETURNS float
language plpgsql
as $$
  begin
      fiyat:=fiyat*0.08+fiyat;
      return fiyat;

end $$;




--fonksiyonu çağırma
SELECT ad,yazar,fiyat, kitap_kdvli(fiyat) FROM ec_kitaplar;


-- mevcut fonksiyonu veri tabanında kaldırma
DROP FUNCTION IF EXISTS kitap_kdvli(float);




