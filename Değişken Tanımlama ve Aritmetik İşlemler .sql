
--declare ile tanımlama işlemi gerçekleşir
--Begin-end blokları arasında yapacağımız işlemleri gerçekleştiririz.
do $$
declare
    --değişken tanımlama
    x int :=20;
    y int:=15;
    z int;
    toplam int;
    fark int;
    carpim int;

begin
 -- Değişken kullanımı
     toplam:=x+y;
     fark:= x-y;
     carpim:=x*y;
     raise notice 'Sayi 1:%', x;
     raise notice 'Sayi 2:%', y;
     raise notice 'Sayi 3:%', z;
     raise notice 'Toplam:%',toplam;
     raise notice 'Farkı:%',fark;
     raise notice 'Çarpım:%',carpim;


 end $$


