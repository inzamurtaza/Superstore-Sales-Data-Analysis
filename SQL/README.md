# Superstore SQL Analysis
This folder presents the SQL analysis stage of the **Superstore Sales Data Analysis** project. The dataset was cleaned and prepared in Excel and then analyzed using **Microsoft SQL Server**.
## SQL File
`Superstore_SQL_Analysis.sql`
## Analysis covered
The SQL analysis includes;
- Dataset overview and business KPIs
- Regional sales and profitability analysis
- Category and sub-category performance
- Top and loss-making products
- Customer and segment analysis
- Discount and profitability analysis
- Shipping performance
- Monthly and quarterly sales trends
- Regional contribution to total sales
- Product ranking within categories
- Cumulative monthly sales
- Month-over-month sales growth
## SQL Techniques Used
- Aggregate functions: `SUM()`, `AVG()`, `COUNT()`, `MIN()`, `MAX()`
- `GROUP BY` and `HAVING`
- `CASE WHEN`
- `COUNT(DISTINCT ...)`
- Date functions
- Common Table Expressions (CTEs)
- Window functions
- `RANK()`
- `PARTITION BY`
- Running totals
- `LAG()`
- `NULLIF()`
## Analytical Focus
The analysis was designed around business questions rather than isolated SQL exercises. I treated repeated Order IDs as valid transaction-line records because a single order may contain multiple products.
## Next Stage 
The key SQL findings will be communicated through **Power BI** in an interactive business dashboard.
