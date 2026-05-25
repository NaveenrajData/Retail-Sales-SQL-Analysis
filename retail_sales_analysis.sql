CREATE TABLE orders (
         row_id INT ,
         order_id VARCHAR(50) ,
         order_date DATE ,
         ship_date DATE ,
         ship_mode VARCHAR(50) ,
         customer_id VARCHAR(50) ,
         customer_name VARCHAR(100) ,
         segment VARCHAR(50) ,
         country VARCHAR(50) ,
         city VARCHAR(50) ,
         state VARCHAR(50) ,
         postal_code VARCHAR(20) ,
         region VARCHAR(50) ,
         product_id VARCHAR(50) ,
         category VARCHAR(50) ,
         sub_category VARCHAR(50) ,
         product_name VARCHAR(255) ,
         sales DECIMAL(10,2) ,
         quantity INT ,
         discount DECIMAL(5,2) ,
         profit DECIMAL(10,2) 
);         
SELECT * FROM orders
LIMIT 10;
DROP TABLE orders;
SELECT * FROM orders
LIMIT 10;
SELECT COUNT(*) AS total_rows
FROM orders;
SELECT `ORDER ID` ,
	   `Customer Name` ,
       sales,
       profit
FROM orders
LIMIT 10;
SELECT SUM(sales) AS total_sales
FROM orders;       
SELECT SUM(profit) AS total_profit
FROM orders;
SELECT `Customer Name`,
       SUM(sales) AS total_sales
FROM orders
GROUP BY `Customer Name`
ORDER BY total_sales DESC
LIMIT 5;
SELECT category,
	   SUM(sales) AS total_sales
FROM orders
GROUP BY category 
ORDER BY total_sales DESC;  
SELECT `Order ID`,
       `Customer Name`,
       profit
FROM orders
WHERE profit < 0;
SELECT city,
       SUM(sales) AS total_sales
FROM orders
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;
SELECT `product name`,
       SUM(sales) AS total_sales
FROM orders
GROUP BY `product name`
ORDER BY total_sales DESC
LIMIT 10;       
SELECT AVG(profit) AS average_profit
FROM orders;
SELECT SUM(quantity) AS total_quantity
FROM orders;
SELECT category,
       SUM(profit) AS total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC;
SELECT MONTH(`Order Date`) AS month,
       SUM(sales) AS monthly_sales
FROM orders
GROUP BY MONTH(`Order Date`)
ORDER BY month;
SELECT `Order ID`,
       `Customer Name`,
       discount
FROM orders
ORDER BY discount DESC
LIMIT 10;      
SELECT state,
       SUM(profit) AS total_profit
FROM orders
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10;
SELECT `Customer Name`,
        SUM(profit) AS total_profit
FROM orders
GROUP BY `Customer Name`
ORDER BY total_profit DESC
LIMIT 10;
SELECT category,
       SUM(sales) AS total_sales
FROM orders
GROUP BY category;
SELECT `Order ID`,
       `Customer Name`,
       sales,
       profit
FROM orders
WHERE profit < 0
LIMIT 20;
SELECT `Order ID`,
       discount,
       sales
FROM orders
ORDER BY discount DESC
LIMIT 10;
SELECT MONTH(`Order date`) AS month,
       SUM(sales) AS monthly_sales
FROM orders
GROUP BY MONTH(`Order Date`)
ORDER BY month;
SELECT state,
       COUNT(*) AS total_orders
FROM orders
GROUP BY state
ORDER BY total_orders DESC
LIMIT 10;
SELECT city,
       SUM(profit) AS total_profit
FROM orders
GROUP BY city
ORDER BY total_profit DESC
LIMIT 5;
SELECT state,
       SUM(profit) AS total_profit
FROM orders
GROUP BY state
ORDER BY total_profit ASC
LIMIT 5;    
SELECT `Product Name`,
        SUM(quantity) AS total_quantity
FROM orders
GROUP BY `Product Name`
ORDER BY total_quantity DESC
LIMIT 10;
SELECT state,
       AVG(profit) AS avg_profit
FROM orders
GROUP BY state
ORDER BY avg_profit DESC;
SELECT `Order ID`,
       discount,
       sales,
       profit
FROM orders
WHERE discount > 0.5
ORDER BY discount DESC;
SELECT `Customer Name`,
        sales,
        profit
FROM orders
WHERE sales > 500
AND profit > 100
LIMIT 20;        
       