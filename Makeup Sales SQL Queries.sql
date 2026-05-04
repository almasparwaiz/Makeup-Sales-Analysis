create database Makeup_Sales_Analysis;
drop database example;

USE Makeup_Sales_Analysis;

CREATE TABLE makeup_sales (
    Sale_ID INT PRIMARY KEY,
    Date DATE,
    Brand VARCHAR(100),
    Product_Type VARCHAR(100),
    Country VARCHAR(100),
    Sales_Channel VARCHAR(100),
    Payment_Method VARCHAR(100),
    Price_USD DECIMAL(10,2),
    Units_Sold INT,
    Revenue_USD DECIMAL(10,2),
    Month VARCHAR(20)
);

show tables;

SELECT 
    Product_Type,
    Brand,
    SUM(Revenue_USD) AS Total_Revenue
FROM makeup_sales
GROUP BY Product_Type, Brand
ORDER BY Total_Revenue DESC
LIMIT 10;

SELECT 
    Month,
    SUM(Revenue_USD) AS Monthly_Revenue
FROM makeup_sales
GROUP BY Month
ORDER BY Month;

SELECT 
    Country,
    SUM(Revenue_USD) AS Total_Revenue,
    SUM(Units_Sold) AS Total_Units
FROM makeup_sales
GROUP BY Country
ORDER BY Total_Revenue DESC;

SELECT 
    Product_Type,
    SUM(Units_Sold) AS Total_Units_Sold
FROM makeup_sales
GROUP BY Product_Type
ORDER BY Total_Units_Sold DESC;

SELECT 
    Payment_Method,
    COUNT(Sale_ID) AS Total_Transactions,
    SUM(Revenue_USD) AS Total_Revenue
FROM makeup_sales
GROUP BY Payment_Method
ORDER BY Total_Revenue DESC;

SELECT 
    Sales_Channel,
    SUM(Revenue_USD) AS Total_Revenue,
    COUNT(Sale_ID) AS Total_Sales
FROM makeup_sales
GROUP BY Sales_Channel
ORDER BY Total_Revenue DESC;

SELECT 
    Brand,
    SUM(Revenue_USD) AS Total_Revenue
FROM makeup_sales
GROUP BY Brand
ORDER BY Total_Revenue DESC;

SELECT 
    Date,
    SUM(Revenue_USD) AS Daily_Revenue
FROM makeup_sales
GROUP BY Date
ORDER BY Date;

SELECT 
    Sale_ID,
    Brand,
    Product_Type,
    Revenue_USD
FROM makeup_sales
WHERE Revenue_USD > 100
ORDER BY Revenue_USD DESC;

SELECT 
    AVG(Revenue_USD) AS Avg_Order_Value
FROM makeup_sales;

SELECT * FROM makeup_sales;