
-- Project: Olist E-commerce Sales & Customer Analytics
-- Purpose: Inspect database tables and document their structure.
-- Database: MySQL

-- 1. Select the database containing the Olist tables.
-- Replace olist_db with your actual database name.
USE ecommerce;

-- 2. List all tables in the selected database.
SHOW TABLES;

-- 3. Inspect the structure of each Olist table.
DESCRIBE olist_customers_dataset;
DESCRIBE olist_orders_dataset;
DESCRIBE olist_order_items_dataset;
DESCRIBE olist_order_payments_dataset;
DESCRIBE olist_order_reviews_dataset;
DESCRIBE olist_products_dataset;
DESCRIBE olist_sellers_dataset;
DESCRIBE olist_geolocation_dataset;
DESCRIBE product_category_name_translation;

-- 4. Check approximate row counts using table metadata.
SELECT
    TABLE_NAME,
    TABLE_ROWS AS APPROXIMATE_ROWS
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = DATABASE()
ORDER BY TABLE_NAME;
