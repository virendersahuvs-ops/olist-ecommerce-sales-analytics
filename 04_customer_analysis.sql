-- Project: Olist E-commerce Analytics
USE ecommerce;

-- 1. Customers by state
SELECT customer_state,
       COUNT(DISTINCT customer_unique_id) AS unique_customers
FROM olist_customers_dataset
GROUP BY customer_state
ORDER BY unique_customers DESC;

-- 2. Top cities by unique customers
SELECT customer_city, customer_state,
       COUNT(DISTINCT customer_unique_id) AS unique_customers
FROM olist_customers_dataset
GROUP BY customer_city, customer_state
ORDER BY unique_customers DESC
LIMIT 15;

-- 3. Orders per customer record
SELECT c.customer_unique_id,
       COUNT(o.order_id) AS total_orders
FROM olist_customers_dataset c
JOIN olist_orders_dataset o ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
ORDER BY total_orders DESC
LIMIT 20;

-- 4. Distribution of orders by status
SELECT o.order_status, COUNT(*) AS total_orders
FROM olist_orders_dataset o
GROUP BY o.order_status
ORDER BY total_orders DESC;