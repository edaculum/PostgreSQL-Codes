--dersler tablosundaki kayıt sayısını toplam değişkenine atadık
--değişkenlere tablo bazlı veri ataması işlemi aş gösterilmiştir.
do $$
declare toplam int;
        toplam2 int;
        kalan_ders_s int;

begin
toplam:=(SELECT count(*) FROM ec_dersler);
toplam2:= (SELECT count(*) FROM ec_dersler WHERE length(ders_ad)>10 );
kalan_ders_s:= toplam-toplam2;

raise notice 'Derslerin kayıt sayısı: %',toplam;
raise notice 'Derslerin adı 10 karakterden uzun ders sayısı: %',toplam2;
raise notice ' kalan dersler: %', kalan_ders_s;

end$$;

