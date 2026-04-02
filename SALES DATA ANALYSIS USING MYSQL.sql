CREATE DATABASE ecommerce_project;
USE ecommerce_project;
CREATE TABLE sales ( 
order_id INT, 
date DATE,
customer_age INT,
gender VARCHAR(10),
product_category VARCHAR(50),
quantity INT,
price DECIMAL(10,2),
total_sales DECIMAL(10,2),
payment_method VARCHAR(20)
);

INSERT INTO sales VALUES
(1001, '2024-01-05' ,22,'Male','Electronics',1,300,300,'Card'),
(1002, '2024-01-06' ,28,'Female','Clothing' ,3,25,75,'Transfer'),
(1003, '2024-01-07' ,35,'Male','Groceries' ,5,10,50,'Cash'),
(1004, '2024-01-08' ,19,'fEMALE','Beauty' ,2,15,30,'Card'),
(1005, '2024-01-09' ,42,'Male','Eectronics' ,1,500,500,'Transfer'),
(1006, '2024-01-10' ,31,'Female','Clothing' ,4,20,80, 'Card'),
(1007, '2024-01-11' ,27,'Male','Groceries' ,3,18,54, 'Cash'),
(1008, '2024-01-12' ,23,'Female','Beauty' ,6,8,48, 'Transfer');

SELECT * FROM Sales;


SELECT SUM(total_sales) AS  total_revenue 
FROM sales;


SELECT product_category,
SUM(total_sales) AS revenue
FROM sales
GROUP BY product_category
ORDER BY revenue DESC;



SELECT gender, SUM(total_sales) AS total_spent 
FROM sales
GROUP BY gender;


SELECT payment_method, COUNT(*) AS total_usage
FROM sales 
GROUP BY payment_method;


SELECT AVG(total_sales) AS avg_spending 
FROM sales;

SELECT MAX(total_sales) AS highest_sales
FROM sales;

