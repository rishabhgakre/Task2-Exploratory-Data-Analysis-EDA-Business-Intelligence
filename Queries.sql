CREATE TABLE sales (
    Order_Date DATE,
    Product_Name TEXT,
    Category TEXT,
    Region TEXT,
    Quantity INT,
    Sales FLOAT,
    Profit FLOAT
);


-- 1. Top 5 Products by Sales
SELECT Product_Name, SUM(Sales) AS total_sales
FROM sales
GROUP BY Product_Name
ORDER BY total_sales DESC
LIMIT 5;



-- 2. Monthly Sales Trend
SELECT TO_CHAR(Order_Date, 'YYYY-MM') AS month,
       SUM(Sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY month;



-- 3. Category with Highest Revenue
SELECT Category, SUM(Sales) AS total_sales
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;



-- 4. Highest Sales by Region
SELECT Region, SUM(Sales) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;



-- 5. Average Order Value
SELECT AVG(Sales) AS avg_order_value
FROM sales;



-- 6. Most Sold Product (Quantity)
SELECT Product_Name, SUM(Quantity) AS total_quantity
FROM sales
GROUP BY Product_Name
ORDER BY total_quantity DESC
LIMIT 5;



-- 7. Month with Highest Sales
SELECT TO_CHAR(Order_Date, 'Month') AS month,
       SUM(Sales) AS total_sales
FROM sales
GROUP BY month
ORDER BY total_sales DESC
LIMIT 1;
