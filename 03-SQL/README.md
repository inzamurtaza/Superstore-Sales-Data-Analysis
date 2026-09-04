# SQL Server — Business Analysis
After preparing and validating the data in Excel, I used **Microsoft SQL Server** to explore the business in more depth and answer questions about sales, profitability, customers, products, discounts, and performance over time.
## SQL File
[`Superstore_SQL_Analysis.sql`](Superstore_SQL_Analysis.sql)
The script contains the SQL queries used throughout this stage of the project.
## What I Investigated
Rather than treating SQL as a set of isolated exercises, I organized the analysis around business questions such as:
- Which regions, categories, and sub-categories contribute most to sales and profit?
- Which products perform strongly, and which generate losses?
- How do customer segments differ in sales and profitability?
- How does discounting relate to business performance?
- How does performance change across months and quarters?
- Which products rank highest within their categories?
- How are sales developing over time?
## SQL Techniques Used
The analysis progresses from core querying and aggregation to more advanced analytical SQL, including:
- Filtering, sorting, and grouping
- `SUM()`, `AVG()`, `COUNT()`, `MIN()`, and `MAX()`
- `COUNT(DISTINCT ...)`
- `CASE` expressions for business classifications
- Date functions for monthly, quarterly, and shipping analysis
- Common Table Expressions (CTEs)
- Window functions
- `RANK()` with `PARTITION BY`
- `LAG()` for period-over-period comparisons
- Running totals
- `NULLIF()` for safer calculations
## Analytical Approach
I kept the analysis at the transaction level where appropriate and treated repeated Order IDs as valid because a single order can contain multiple product line items. The SQL analysis helped identify the performance patterns and profitability questions that were then developed into an interactive Power BI report.

**Next stage → [`04-Power BI`](../04-Power%20BI/)**
