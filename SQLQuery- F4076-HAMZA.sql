--1
SELECT city, COUNT('customer_id') AS total_customers
FROM sale.customer
GROUP BY city
ORDER BY total_customers DESC;

--2
SELECT order_id, SUM(quantity) AS total_quantity
FROM sale.order_item
GROUP BY order_id;
 --3
 SELECT customer_id, MIN(order_date) AS first_order_date
 FROM sale.orders
 GROUP BY customer_id;

 --4
 SELECT order_id, SUM(list_price) AS total_amount
 FROM sale.order_item
 GROUP BY order_id
 ORDER BY total_amount DESC;

 --5
 SELECT TOP 1 order_id, AVG(list_price*(1-discount)) AS avg_product_price
 FROM sale.order_item
 GROUP BY order_id
 ORDER BY avg_product_price DESC;

 --6
 SELECT brand_id, product_id, list_price 
 FROM product.product
 ORDER BY brand_id, list_price DESC;

 --7
 SELECT brand_id, product_id, list_price
 FROM product.product
 ORDER BY list_price DESC, brand_id;

 --8
--Order by fonksiyonu gereði 6. soruda ilk yazýlan brand_id sütununa göre sýralama yapýp, sýralanmýýþ halini
--baz alarak list_price sütununu sýraladý. Her bir markanýn fiyatlarýný kendi içinde sýralmýþ oldu. 7. soruda ise
--önce fiyat sütunu sýralanýp bunu doðrultusunda brand_id sýralandý. 

 --9
 SELECT TOP 10 *
 FROM product.product
 WHERE list_price >= 3000;

 --10
 SELECT TOP 5 *
 FROM product.product
 WHERE list_price < 3000;

 --11
 SELECT last_name
 FROM sale.customer
 WHERE last_name LIKE 'B%s';

 --12
 SELECT city
 FROM sale.customer
 WHERE city='Allen' OR city='Buffalo' OR city='Boston';