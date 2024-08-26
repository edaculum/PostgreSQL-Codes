--view oluşturma

--ürünlerin adları, fiyatları, stokları ve kategorilerin isimleriyle birlikte listelenmesini sağlar
create view ec_urun_detay
as
Select ec_products.name as product_name, price, stock , ec_categories.name as categories_name FROM ec_products
inner join ec_categories on ec_products.category_id = ec_categories.id;


--view'in çağırılması
SELECT *FROM ec_urun_detay;


--müşterilerin isimleri ve yaptıkları siparişlerin tarihleri ile birlikte listelenmesini sağlar
create view ec_musteri_siparis_detay
as
select name, surname, ec_orders.date FROM ec_customers
inner join ec_orders on ec_customers.id=ec_orders.customer_id;


--view'in çağırılması
select *from ec_musteri_siparis_detay;



-- siparişlerin tarihleri ile birlikte her siparişteki ürünlerin detaylarını gösterir
-- orders, customers, products
create view ec_siparis_ürün_detaylari
as
select ec_orders.id , ec_orders.date, ec_customers.name as customer_name, ec_products.name as products_name,ec_order_items.price, ec_order_items.count from ec_order_items
inner join ec_orders on ec_order_items.order_id = ec_orders.id
inner join ec_customers on ec_orders.customer_id=ec_customers.id
inner join ec_products on ec_order_items.product_id = ec_products.id;


-- view'i çağırma
select *from ec_siparis_ürün_detaylari;



