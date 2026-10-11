-- Project: Olist E-commerce Analytics
USE ecommerce;

-- 1. Monthly order volume
SELECT DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS order_month,
       COUNT(*) AS total_orders
FROM olist_orders_dataset
WHERE order_purchase_timestamp IS NOT NULL
GROUP BY DATE_FORMAT(order_purchase_timestamp, '%Y-%m')
ORDER BY order_month;

-- 2. Monthly sales value based on order-item prices
SELECT DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
       ROUND(SUM(oi.price), 2) AS item_sales_value,
       ROUND(SUM(oi.freight_value), 2) AS freight_value
FROM olist_orders_dataset o
JOIN olist_order_items_dataset oi ON o.order_id = oi.order_id
WHERE o.order_purchase_timestamp IS NOT NULL
GROUP BY DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m')
ORDER BY order_month;

-- 3. Payment methods and recorded payment value
SELECT p.payment_type,
       COUNT(*) AS payment_records,
       ROUND(SUM(p.payment_value), 2) AS total_payment_value
FROM olist_order_payments_dataset p
GROUP BY p.payment_type
ORDER BY total_payment_value DESC;

-- 4. Top product categories by item sales value
SELECT COALESCE(t.product_category_name_english, pr.product_category_name, 'Unknown') AS category,
       ROUND(SUM(oi.price), 2) AS item_sales_value,
       COUNT(*) AS item_count
FROM olist_order_items_dataset oi
JOIN olist_products_dataset pr ON oi.product_id = pr.product_id
LEFT JOIN product_category_name_translation t
  ON pr.product_category_name = t.product_category_name
GROUP BY COALESCE(t.product_category_name_english, pr.product_category_name, 'Unknown')
ORDER BY item_sales_value DESC
LIMIT 10;