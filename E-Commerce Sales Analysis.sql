USE ecommerce_sales;


SELECT *FROM ecom_dataset3;

-- 1. Total Revenue
SELECT
ROUND(SUM(price),2) AS Total_Revenue
FROM ecom_dataset3;


-- Total Orders
SELECT
COUNT(DISTINCT order_id) AS Total_Orders
FROM ecom_dataset3;


-- Which Product category has highest revenue


SELECT
product_category_name,
ROUND(SUM(price),2) AS Revenue
FROM ecom_dataset3
GROUP BY product_category_name
ORDER BY Revenue DESC;


-- Which Month Had Peak Sales?

SELECT
Month,
ROUND(SUM(price),2) AS Revenue
FROM ecom_dataset3
GROUP BY Month
ORDER BY Revenue DESC;

-- Monthly Sales Trend

SELECT
YEAR(order_purchase_timestamp) AS Year,
 Month,
ROUND(SUM(price),2) AS Revenue
FROM ecom_dataset3
GROUP BY Year, Month
ORDER BY Year, Month;


-- Average order value

SELECT
Month,
ROUND(AVG(price),2) AS Average_Order_Value
FROM ecom_dataset3
GROUP BY Month;


-- Customer Review Score Distribution

SELECT
review_score,
COUNT(*) AS Total_Reviews
FROM ecom_dataset3
GROUP BY review_score
ORDER BY review_score;

-- Average Review Score

SELECT
ROUND(AVG(review_score),2) AS Average_Review_Score
FROM ecom_dataset3;


-- Order Status Analysis

SELECT
order_status,
COUNT(*) AS Total_Orders
FROM ecom_dataset3
GROUP BY order_status
ORDER BY Total_Orders DESC;


-- Top 10 Categories by Orders

SELECT
product_category_name,
COUNT(order_id) AS Total_Orders
FROM ecom_dataset3
GROUP BY product_category_name
ORDER BY Total_Orders DESC
LIMIT 10;


-- Top 10 Categories by Revenue
SELECT 
product_category_name,
ROUND(SUM(price),2) AS Revenue
FROM ecom_dataset3
GROUP BY product_category_name
ORDER BY Revenue DESC
LIMIT 10;

-- Revenue Contribution by Category

SELECT
product_category_name,
ROUND(SUM(price),2) AS Revenue
FROM final_dataset
GROUP BY product_category_name
ORDER BY Revenue DESC;