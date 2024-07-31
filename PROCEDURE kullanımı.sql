-- language  plpgsql--> bu prosedür için kullanılacak dil
CREATE PROCEDURE deneme()
language  plpgsql
as $$
begin
raise notice 'PostgreSQL Derslerimiz Devam Ediyor';

end; $$


-- prosedür'ü çağırma
call deneme();



--prosedürde güncelleme işlemi OR REPLACE ile.
-- aslında yeni bir prosedür oluşturmadı, mevcuttaki deneme prosedürünü güncelledi
CREATE OR REPLACE PROCEDURE deneme()
language  plpgsql
as $$
begin
raise notice 'PostgreSQL Derslerimiz Devam Ediyor';
raise notice 'PostgreSQL 2. satır burası';

end $$;



--VALUES (f_id,f_adi) -- parametrelerin geleceği yerler yazılır.
--ec_fakulte(id,ad) -- neyin içine ekleme yapılacağı
--ec_fakulte tablosuna yeni bir fakülte ekle
CREATE PROCEDURE ec_fakulte_ekle(
    f_id int,
    f_adi varchar
)
language plpgsql
as $$
    begin
    INSERT INTO ec_fakulte(id,ad) VALUES (f_id,f_adi);
    end $$;




--Prosedürü Kullanma: prosedürü çağırıp ekleme yapıldı.ec_fakulte_ekle (f_id, f_adi)
call ec_fakulte_ekle(6,'Besyo');



--aş. prosedür, belirli bir yazarın adını güncelleyecektir:
CREATE PROCEDURE ec_fakulte_guncelle (
    eski_fakulte varchar,
    yeni_fakulte varchar

)
language plpgsql
as $$
    begin
        UPDATE ec_fakulte
        SET ad= yeni_fakulte
        WHERE ad=eski_fakulte;
    end $$;


--prosedürü silme
DROP PROCEDURE IF EXISTS ec_fakulte_guncelle;

--CALL ec_fakulte_guncelle('Eski fakulte adı', 'Yeni fakulte adı');
call ec_fakulte_guncelle('Veterinerlik','İibf');



select *from ec_fakulte order by id;


















CREATE PROCEDURE
