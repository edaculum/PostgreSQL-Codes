-- returns den sonra normalde geriye dönen değişkenin türünü yazıyorduk.
-- ama burada tablo döndereceğimiz için 'returns table' yazarız
create function kitap_getir(prmt varchar)

returns table
    --aş. parantez içine; geriye döndüreceğimiz tabloya ait sütunları yazarız
(
    id_sütun int,
    kitap_ad_sütun varchar,
    kitap_yazar_sütun varchar
)
language plpgsql
as $$
begin
    Return Query
    SELECT id,ad,yazar FROM ec_kitaplar    -- bu veriler bize ec_kitaplar tablosundan gelecek.
    WHERE ad LIKE prmt;     -- ec_kitaplar tablosundaki ad sütunum, dışarıdan gönderdiğimiz prmt'ye benzemeli

end $$;



-- kitap_getir fonksiyonunun çağırılması
select *from kitap_getir('%e%'); 