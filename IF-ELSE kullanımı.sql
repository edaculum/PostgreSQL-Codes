--begin kısmında işlemleri yapıyoruz.
do $$
declare
    sinav1 int:= 20;
    sinav2 int:= 64;
    sinav3 int:= 15;
    ortalama int;

begin
ortalama:= (sinav1+sinav2+sinav3)/3;
raise notice 'Öğrenci sınav ortalaması:%',ortalama;

if ortalama>=50 then
    raise notice 'öğrenci dersi geçti';
else
    raise notice  'öğrenci dersten kaldı';
end if;

end$$;



-- girilen sayı tek mi çift mi
do $$
 declare sayi int:=21;

begin
     if sayi%2=0 then
         raise notice 'sayı çifttir';
     else
         raise notice 'sayı tektir';
     end if;


end$$;




--2 numaralı bölümde 3 den fazla ders var mı yok mu. amacımız dersin adetini bulmak
do $$
declare adet int;

Begin
    adet:=(SELECT count(*) FROM ec_dersler where bolum_id=2);
    if adet >=3 then
        raise notice ' numaralı bölümde 3 den fazla ders var';
    else
        raise notice ' numaralı bölümde 3 den az ders var';
    end if;

end$$;





--bölüm adı =yazılım olan bölümün 3 ten fazla mı yoksa 3 ten az mı dersi olduğunu bulan sorgu
do $$
    declare bolum varchar(20);
            ders_adet int;

begin
        bolum:= 'Yazılım';
        ders_adet:= (SELECT count(*) FROM ec_dersler
                                     WHERE bolum_id=
                                     (SELECT distinct bolum_id FROM ec_bolum WHERE bolum_ad=bolum));


        if ders_adet > 3 then
            raise notice  'ilgili bölümde 3 ten fazla ders vardır';
        else
            raise notice  'ilgili bölümde 3 den az ders vardır';
        end if;

end$$;