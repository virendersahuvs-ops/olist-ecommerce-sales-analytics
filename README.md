# Olist E-commerce Sales & Customer Analytics

A SQL-based data analytics project exploring Brazilian e-commerce data to understand sales performance, customer behavior, product categories, payment methods, delivery performance, and customer reviews.

## Project Overview

This project uses the Olist e-commerce dataset to explore business performance through SQL queries in MySQL. It focuses on transforming raw relational data into meaningful metrics that can help businesses understand sales trends, customer distribution, and operational performance.

**Project Status:** In Progress

## Objectives

- Analyze monthly order and sales trends.
- Identify top-performing product categories.
- Explore payment methods and payment values.
- Understand customer distribution across cities and states.
- Evaluate delivery timelines and late deliveries.
- Analyze customer review scores.
- Practice SQL querying, data quality checks, joins, aggregation, and business KPI analysis.

## Tools & Technologies

- **Database:** MySQL
- **SQL Environment:** MySQL Workbench
- **Language:** SQL
- **Dataset:** Brazilian E-commerce Public Dataset by Olist
- **Version Control:** Git and GitHub

## Database Tables

The project works with the following tables:

| Table | Purpose |
|---|---|
| `olist_customers_dataset` | Customer information and location |
| `olist_orders_dataset` | Order status and timestamps |
| `olist_order_items_dataset` | Products, prices, and freight by order |
| `olist_order_payments_dataset` | Payment types and values |
| `olist_order_reviews_dataset` | Customer review scores |
| `olist_products_dataset` | Product information and categories |
| `olist_sellers_dataset` | Seller information |
| `olist_geolocation_dataset` | Geographic coordinates and postal codes |
| `product_category_name_translation` | Product category translations |

## Project Structure

```text
olist-ecommerce-sales-analytics/
├── sql/
│   ├── 01_schema.sql
│   ├── 02_data_quality_checks.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_customer_analysis.sql
│   └── 05_delivery_reviews_analysis.sql
├── screenshots/
├── README.md
└── .gitignore
```

## Analysis Performed

### 1. Database Exploration
- Inspect database tables and column structures.
- Review table row counts.
- Understand relationships between orders, customers, products, and payments.

### 2. Data Quality Checks
- Check duplicate customer and order identifiers.
- Identify missing values in selected columns.
- Examine the distribution of order statuses.
- Review table sizes and data completeness.

### 3. Sales Analysis
- Analyze monthly order volumes.
- Calculate item sales value and freight value.
- Compare payment methods by recorded payment value.
- Identify product categories with the highest item sales value.

### 4. Customer Analysis
- Analyze customer distribution by state and city.
- Explore order counts associated with customers.
- Examine order-status distribution.

### 5. Delivery & Review Analysis
- Calculate average delivery time for delivered orders.
- Identify orders delivered after their estimated delivery dates.
- Analyze customer review score distribution.
- Compare average review scores by order status.

## Key SQL Concepts

- `SELECT`, `WHERE`, `ORDER BY`
- `GROUP BY` and aggregate functions
- `JOIN` and `LEFT JOIN`
- Subqueries
- `CASE` and conditional aggregation
- Date and time functions
- Data quality checks
- Business metrics and KPI analysis

## Screenshots

Screenshots of database tables, SQL queries, and query outputs will be added to the `screenshots/` folder as the project progresses.

<!-- Add screenshots below after uploading them.
Example:
![Monthly Sales Analysis](screenshots/monthly-sales-analysis.png)
-->

## How to Run the Project

1. Install MySQL Server and MySQL Workbench.
2. Download the Olist dataset from the source listed below.
3. Import the required CSV files into a MySQL database named `ecommerce`.
4. Open the SQL scripts from the `sql/` folder in MySQL Workbench.
5. Execute the scripts in numerical order.
6. Review the query results and compare them with the analysis objectives.

**Note:** The SQL scripts assume that the database is named `ecommerce` and that the tables use the names listed above.

## Dataset Source

Olist Brazilian E-Commerce Public Dataset on Kaggle:

https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

The dataset contains information about orders, customers, products, sellers, payments, reviews, and deliveries.

## Future Improvements

- Build an interactive dashboard using Power BI or Tableau.
- Add deeper customer segmentation and repeat-purchase analysis.
- Analyze seller performance and product category trends.
- Improve data quality checks and document findings.
- Add charts and evidence-based business recommendations.

## Author

**Virender Sahu**

B.Tech Student | Aspiring Data Analyst & Data Scientist

- GitHub: https://github.com/virendersahuvs-ops

---

*This project is intended for learning and demonstrating SQL-based data analytics. Business findings will be documented after the queries have been executed and their results validated.*