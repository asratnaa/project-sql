CREATE DATABASE kenangan_toko;
USE kenangan_toko;


--- tabel untuk menyimpan informasi pelanggan
create table customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name varchar(100),
city varchar(100)
);

-- Tabel untuk menyimpan informasi produk
create table products(
product_id int AUTO_INCREMENT primary key,
product_name varchar(100),
price decimal(10,2)
);

-- Tabel untuk menyimpan informasi penjualan

CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    quantity INT,
    sale_date DATE,
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Masukkan data ke tabel customers
INSERT INTO customers (customer_name, city) VALUES
('Alice', 'New York'),
('Bob', 'Los Angeles'),
('Charlie', 'Chicago'),
('Robert','Chicago'),
('keira','New York'),
('Xavier','New York');


-- Masukkan data ke tabel products
INSERT INTO products (product_name, price) VALUES
('Product A', 10.00),
('Product B', 15.00),
('Product C', 20.00),
('Product D ', 20.00);

-- Masukkan data ke tabel sales
INSERT INTO sales (product_id, customer_id, quantity, sale_date) VALUES
(1, 1, 2, '2024-01-01'),
(2, 2, 1, '2024-01-02'),
(3, 3, 5, '2024-01-03'),
(1, 3, 3, '2024-01-03'),
(2, 1, 4, '2024-01-04');
