-- Project: Olist E-commerce Analytics
USE ecommerce;

-- 1. Delivery performance for orders with valid timestamps
SELECT
 COUNT(*) AS delivered_orders,
 ROUND(AVG(TIMESTAMPDIFF(DAY, order_purchase_timestamp, order_delivered_customer_date)), 2) AS avg_days_to_delivery,
 SUM(order_delivered_customer_date > order_estimated_delivery_date) AS delivered_after_estimate
FROM olist_orders_dataset
WHERE order_status = 'delivered'
  AND order_purchase_timestamp IS NOT NULL
  AND order_delivered_customer_date IS NOT NULL;

-- 2. Monthly average delivery time
SELECT DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS order_month,
       ROUND(AVG(TIMESTAMPDIFF(DAY, order_purchase_timestamp, order_delivered_customer_date)), 2) AS avg_delivery_days
FROM olist_orders_dataset
WHERE order_status = 'delivered'
  AND order_purchase_timestamp IS NOT NULL
  AND order_delivered_customer_date IS NOT NULL
GROUP BY DATE_FORMAT(order_purchase_timestamp, '%Y-%m')
ORDER BY order_month;

-- 3. Review score distribution
SELECT review_score, COUNT(*) AS total_reviews
FROM olist_order_reviews_dataset
GROUP BY review_score
ORDER BY review_score;

-- 4. Average review score by order status
SELECT o.order_status,
       ROUND(AVG(r.review_score), 2) AS avg_review_score,
       COUNT(*) AS review_records
FROM olist_orders_dataset o
JOIN olist_order_reviews_dataset r ON o.order_id = r.order_id
GROUP BY o.order_status
ORDER BY avg_review_score DESC;