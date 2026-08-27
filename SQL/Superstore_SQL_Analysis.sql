/*============================================================
  SUPERSTORE SALES DATA ANALYSIS
==============================================================

  Project      : Superstore Sales Data Analysis
  Tool         : Microsoft SQL Server
  Dataset      : Superstore Retail Sales Data
  Records      : 9,994 transaction lines

  Objective:
  Analyze sales, profitability, customers, products, regions,
  discounts, shipping performance, and time-based trends to
  identify meaningful business insights.

  Workflow:
  Excel      -> Data Cleaning & Validation
  SQL Server -> Business Analysis
  Power BI   -> Visualization & Dashboard

============================================================*/

USE SuperstoreDB;
GO
/*============================================================
  1. DATASET OVERVIEW
============================================================*/

--Q1. What is overall size of data?

select 
	count(*) as Total_transaction_lines,
	count(distinct order_id) as Total_orders,
	count(distinct customer_id) as Total_customers,
	count(distinct product_id) as Total_products
from superstore;

/*============================================================
  2. Overall Business Performance
============================================================*/

--Q2. What are the overall sales, profit, quantity sold, and average transaction values?

Select 
	ROUND(SUM(sales), 2) as Total_sales,
	ROUND(SUM(Profit), 2) as Total_profit,
	SUM(quantity) as Total_quantity_sold,
	ROUND(AVG(sales),2) as average_transaction_sales,
	ROUND(AVG(profit), 2) as average_transaction_profit
from Superstore;

/*============================================================
  3. Regional Performance
============================================================*/

-- Q3. Which region generated the highest profit, and how do total sales and orders compare across regions?

Select  region,
	COUNT(DISTINCT order_id) as Total_orders,
	ROUND(SUM(sales), 2) as Total_sales,
	ROUND(SUM(profit), 2) as Total_profit
from Superstore
group by Region
order by Total_profit DESC;

/*============================================================
  4. CATEGORY & PRODUCT PERFORMANCE
============================================================*/

--Q4. How do sales and profit compare across product categories?

SELECT 
	Category,
	ROUND(SUM(sales), 2) as Total_Sales,
	ROUND(SUM(Profit),2) as Total_profit
FROM Superstore
Group by Category
order by Total_Sales DESC;

--Q5. Which sub-categories generate the highest profit?
Select 
	TOP 1 Sub_Category,
	ROUND(SUM(profit), 2) as Total_profit
FROM Superstore
GROUP BY Sub_Category
ORDER BY Total_profit DESC;
--Q6. Which sub-categories generate losses?
SELECT
	Sub_Category,
	ROUND(SUM(profit), 2) as Total_loss
FROM Superstore
group by Sub_Category
having SUM(profit) < 0 
order by Total_loss ASC;
--Q7. What are the top 10 products by sales?
Select 
	TOP 10 Product_Name,
	ROUND(SUM(sales), 2) as Total_sales
FROM Superstore
group by Product_Name
order by Total_sales  DESC;
--Q8. What are the top 10 products by profit?
SELECT 
	TOP 10 Product_Name,
	ROUND(SUM(profit), 2) as Total_profit
FROM Superstore
GROUP BY Product_Name
ORDER BY Total_profit DESC;
--Q9. What are the top 10 products generating the largest losses?
SELECT TOP 10
	Product_Name,
	ROUND(SUM(profit), 2) as Loss
FROM Superstore
GROUP BY Product_Name
HAVING SUM(profit) < 0 
ORDER BY Loss ASC;

/*============================================================
  5. CUSTOMER & SEGMENT ANALYSIS
============================================================*/

--Q10. How do total sales and profit compare across Customer segments?
SELECT 
	Segment,
	ROUND(SUM(sales), 2) as Total_sales,
	ROUND(SUM(profit), 2) as Total_profit
FROM Superstore
Group by Segment
ORDER BY Total_sales DESC;
--Q11. Who are the top 10 customers by total sales?
SELECT TOP 10
	Customer_Name,
	ROUND(SUM(sales), 2) as total_sales
FROM Superstore
GROUP BY Customer_Name
ORDER BY total_sales DESC;
--Q12. Who are the top 10 customers by profit?
SELECT TOP 10
	 Customer_name,
	 ROUND(SUM(profit), 2) as Total_profit
from Superstore
GROUP BY Customer_Name
ORDER BY Total_profit DESC;
--Q13. Which customers generate negative overall profit, and what are their total sales?
SELECT 
	Customer_name,
	ROUND(SUM(sales), 2) as Total_sales,
	ROUND(SUM(profit), 2) as Negative_overall_profit
from Superstore
GROUP BY Customer_Name
having SUM(profit) < 0
ORDER BY Negative_overall_profit ASC; 
/*============================================================
  6. DISCOUNT & PROFITABILITY ANALYSIS
============================================================*/
--Q14. How does average profit vary by discount level?
SELECT 
		case	
			when discount = 0 then 'No discount'
			when discount <= 0.2 then 'low discount'
			else 'high discount'
			end as Discount_level,
		ROUND(AVG(Profit), 2) as Average_profit
FROM Superstore
group by  case	
			when discount = 0 then 'No discount'
			when discount <= 0.2 then 'low discount'
			else 'high discount'
			end;


--Q15. How does total profit compare across discount levels?
Select 
	CASE 
		when discount = 0 then 'No discount'
		when Discount <= 0.2 then 'low discount'
		else 'high discount'
	end as Discount_level,
		ROUND(SUM(Profit), 2) as Total_profit
FROM Superstore
GROUP BY CASE 
		when discount = 0 then 'No discount'
		when Discount <= 0.2 then 'low discount'
		else 'high discount'
		end
ORDER BY Total_profit ASC;
--Q16. How many transactions received no discount versus a discount?
SELECT 
	CASE 
		when Discount = 0 then 'No discount'
		else 'Discounted'
		end as Discount_status,
	COUNT(*) as Transactions
FROM Superstore
GROUP BY CASE 
		when Discount = 0 then 'No discount'
		else 'Discounted'
		end;
/*============================================================
  7. SHIPPING PERFORMANCE
============================================================*/
--Q17. What is the average shipping time by Ship Mode?
SELECT 
	ship_mode,
	AVG(DATEDIFF(DAY, Order_Date, Ship_date)) as Average_Shipping_time
FROM Superstore
GROUP BY Ship_Mode;
--Q18. Which Ship Mode has the highest number of unique orders?
SELECT TOP 1
	Ship_Mode,
	COUNT(DISTINCT Order_ID) as Unique_orders
FROM Superstore
GROUP BY Ship_Mode
ORDER BY Unique_orders DESC;
--Q19. Which regions experience the longest average shipping times?
SELECT 
	Region,
	AVG(DATEDIFF(day, order_date, ship_date)) as Average_shipping_time
FROM Superstore
GROUP BY Region
ORDER BY Average_shipping_time DESC;
/*============================================================
  8. TIME-BASED SALES ANALYSIS
============================================================*/
--Q20. What are monthly sales and profit trends?
SELECT
	MONTH(order_date) as Month_number,
	ROUND(SUM(Sales), 2) as Total_sales,
	ROUND(SUM(Profit),2) as Total_profit
FROM Superstore
Group by MONTH(order_date)
ORDER BY Month_number;
--Q21. Which month generated the highest sales?
SELECT TOP 1
	DATENAME(MONTH, Order_Date) as month_name,
	ROUND(SUM(sales), 2) as Total_sales
FROM Superstore 
GROUP BY DATENAME(MONTH, Order_Date)
ORDER BY Total_sales DESC;
--Q22. What are quarterly sales and profit results?
SELECT
	DATEPART(Quarter, order_date) as Quarter,
	ROUND(SUM(sales), 2) as Total_sales,
	ROUND(SUM(profit), 2) as Total_profit
FROM Superstore
GROUP BY DATEPART(Quarter, order_date)
ORDER BY Quarter ASC;
/*============================================================
  9. ADVANCED ANALYTICAL SQL
============================================================*/
-- Q23. What percentage of total company sales does each region contribute?
WITH region_sales AS (
	SELECT
		Region,
		SUM(sales) AS total_sales
		FROM Superstore
		GROUP BY Region
)
 SELECT
	Region,
	ROUND(total_sales, 2) AS total_sales,
	ROUND(total_sales/SUM(total_sales) OVER() * 100,
	2
 ) AS sales_percentage
 FROM region_sales
 ORDER BY total_sales DESC;
-- Q24. What are the top 3 products by total profit within each category?
WITH product_profit AS (
    SELECT
        Category,
        Product_Name,
        SUM(Profit) AS total_profit
    FROM Superstore
    GROUP BY Category, Product_Name
), 
 product_ranking AS (
	SELECT
		Category,
		Product_Name,	
		total_profit,
		RANK() OVER(
		PARTITION BY category 
		ORDER BY total_profit DESC
	 ) AS profit_rank
	FROM product_profit
)
 SELECT
	Category,
	Product_Name,	
	ROUND(total_profit, 2) AS total_profit,
	profit_rank
FROM product_ranking
WHERE profit_rank <= 3
ORDER BY Category, profit_rank; 
-- Q25. How do cumulative sales develop across the year?
WITH monthly_sales AS (
	SELECT
		MONTH(order_date) AS month_number,
		SUM(sales) AS total_sales
	FROM Superstore
	GROUP BY MONTH(order_date)
)
 SELECT
	month_number,
	ROUND(total_sales, 2) AS total_sales,
	ROUND(SUM(total_sales) OVER(
	ORDER BY month_number
	ROWS BETWEEN UNBOUNDED PRECEDING 
		AND CURRENT ROW), 
		2
	) AS cumulative_sales
FROM monthly_sales
ORDER BY month_number;
-- Q26. How did monthly sales change compared with the previous month?
WITH monthly_sales AS (
	SELECT
		MONTH(order_date) AS month_number,
		SUM(sales) AS total_sales
	FROM Superstore
	GROUP BY MONTH(order_date)
),
  previous_month AS (
	SELECT
		month_number,
		total_sales,
		LAG(total_sales) OVER(
		ORDER BY month_number
	 ) AS previous_month_sales
	 FROM monthly_sales
)
 SELECT 
	month_number,
	ROUND(total_sales, 2) AS total_sales,
	ROUND(previous_month_sales, 2) AS previous_month_sales,
	ROUND(total_Sales - previous_month_sales, 2) AS sales_change,
	ROUND((total_Sales - previous_month_sales)
	/
	 NULLIF(previous_month_sales, 0) * 100,
	 2
	 ) AS mom_growth_percent 
FROM previous_month
ORDER BY month_number;


