-- Project: Olist E-commerce Analytics
USE ecommerce;

-- Check row counts
SELECT 'customers' AS table_name, COUNT(*) AS total_rows FROM olist_customers_dataset
UNION ALL SELECT 'orders', COUNT(*) FROM olist_orders_dataset
UNION ALL SELECT 'order_items', COUNT(*) FROM olist_order_items_dataset
UNION ALL SELECT 'payments', COUNT(*) FROM olist_order_payments_dataset
UNION ALL SELECT 'reviews', COUNT(*) FROM olist_order_reviews_dataset
UNION ALL SELECT 'products', COUNT(*) FROM olist_products_dataset
UNION ALL SELECT 'sellers', COUNT(*) FROM olist_sellers_dataset
UNION ALL SELECT 'geolocation', COUNT(*) FROM olist_geolocation_dataset
UNION ALL SELECT 'category_translation', COUNT(*) FROM product_category_name_translation;

-- Check duplicate customer IDs
SELECT customer_id, COUNT(*) AS occurrences
FROM olist_customers_dataset
GROUP BY customer_id HAVING COUNT(*) > 1;

-- Check duplicate order IDs
SELECT order_id, COUNT(*) AS occurrences
FROM olist_orders_dataset
GROUP BY order_id HAVING COUNT(*) > 1;

-- Check missing order timestamps
SELECT COUNT(*) AS missing_purchase_timestamps
FROM olist_orders_dataset
WHERE order_purchase_timestamp IS NULL;

-- Review order statuses
SELECT order_status, COUNT(*) AS total_orders
FROM olist_orders_dataset
GROUP BY order_status ORDER BY total_orders DESC;

-- Check missing customer fields
SELECT
 SUM(customer_id IS NULL) AS missing_customer_ids,
 SUM(customer_unique_id IS NULL) AS missing_unique_ids,
 SUM(customer_city IS NULL) AS missing_cities,
 SUM(customer_state IS NULL) AS missing_states
FROM olist_customers_dataset;
