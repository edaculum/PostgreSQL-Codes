--1 ile 10 arasındaki değerleri ekrana yazdırıp bunları toplam değerine atar
do $$
    declare sayac int:=1;
            toplam int:=0;


begin
   while sayac<=10
       loop
       raise notice 'Sayaç:%',sayac;
       toplam:= sayac+toplam;
       sayac:= sayac+1;
       end loop;
       raise notice 'Döngüdeki sayıların toplamı: %',toplam;

end$$;


-- while yerine direkt loop-end loop arasına komutları yazacağız.
--exit when sayac=5; sayac 5 olduğunda çıkış yap
--5 defa yazdırır. 0 dan 5 e kadar. ve bunları toplar
do $$
   declare sayac int:=0;
           toplam int:=0;
begin
   loop
       exit when sayac=5;
       raise notice 'sayaç: %',sayac;
       toplam:=toplam+ sayac;
       sayac:=sayac+1;
   end loop;
      raise notice 'toplam: %',toplam;

end$$;



--
