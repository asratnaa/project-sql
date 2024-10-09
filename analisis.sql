select * from customers;
select * from products;
select * from sales;

-- Total Sales Calculation per Customer
SELECT c.customer_name, SUM(p.price * s.quantity) AS total_spent
FROM sales s
JOIN products p ON s.product_id = p.product_id
JOIN customers c ON s.customer_id = c.customer_id
GROUP BY c.customer_name;

-- Best Selling Product
SELECT p.product_name, SUM(s.quantity) AS total_quantity_sold
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC
LIMIT 1;

-- Sales Trend Over Time
SELECT DATE(sale_date) AS sale_date, SUM(p.price * s.quantity) AS daily_sales
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY DATE(sale_date)
ORDER BY sale_date;
