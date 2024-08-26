--ürünlerin kategorilerini saklar. Her kategori, ürünleri gruplandırmak için kullanılır.
CREATE TABLE ec_categories (
   id SERIAL not null ,
   seq INT,
   name VARCHAR(255) ,
   PRIMARY KEY(id)
);

--müşterilerin bilgilerini saklar
CREATE TABLE ec_customers(
    id SERIAL not null ,
    name VARCHAR(255),
    surname VARCHAR(255),
    PRIMARY KEY(id)
);

-- ürünlerin bilgilerini saklar.
CREATE TABLE ec_products (
    id SERIAL not null ,
    seq INT,
    name VARCHAR(255),
    price DECIMAL(10, 2),
    description TEXT,
    stock INT CHECK (stock >= 0 ),
    imageUrl VARCHAR(255),
    category_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(category_id)
    REFERENCES ec_categories(id)
);

--müşterilerin siparişlerini saklar
CREATE TABLE ec_orders(
    id SERIAL not null ,
    date DATE,
    customer_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(customer_id)
    REFERENCES ec_customers(id)
);

--her siparişte yer alan ürünlerin detaylarını saklar.
--Bir sipariş birden fazla ürünü içerebilir ve bu tablo, hangi siparişin hangi ürünleri içerdiğini belirtir.
CREATE TABLE ec_order_items (
    id SERIAL not null ,
    order_id INT,
    product_id INT,
    price DECIMAL(10, 2),
    count INT,
    PRIMARY KEY(id),
    FOREIGN KEY(order_id)
    REFERENCES ec_orders(id),
    FOREIGN KEY(product_id)
    REFERENCES ec_products(id)
);


--tabloları çağırma
SELECT *FROM ec_categories;
SELECT *FROM ec_customers;
SELECT *FROM ec_products;
SELECT *FROM ec_orders;
SELECT *FROM ec_order_items;

