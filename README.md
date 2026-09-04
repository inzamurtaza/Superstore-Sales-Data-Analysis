# Retail Performance & Profitability Analysis
### End-to-End Data Analytics Project | Excel • SQL Server • Power BI
An end-to-end retail analytics project examining **sales performance, profitability drivers, discount risk, and growth opportunities**. The project progresses from data preparation and validation to SQL-based analysis and an interactive Power BI decision-support report.
---
## Dashboard Preview
![Executive Pulse](05-Assets/01-Executive%20Pulse.PNG)
### Performance Snapshot
| Sales | Profit | Profit Margin | Orders | Customers |
|---:|---:|---:|---:|---:|
| **$2.30M** | **$289.8K** | **12.6%** | **5K** | **793** |
---
## Business Problem
Strong sales do not always translate into strong profitability. This project investigates:
- Where are sales and profits being generated?
- Which products, regions, and customer segments drive profitability?
- Where is revenue being generated with weak or negative profit?
- How does discounting affect profitability?
- What areas should management prioritize for improvement and growth?
---
## Analytics Workflow

**Data → Excel → SQL Server → Power BI**

| Stage | Purpose |
|---|---|
| **01 — Data** | Transaction-level retail sales dataset |
| **02 — Excel** | Data cleaning, validation, and exploratory analysis |
| **03 — SQL Server** | Business analysis and profitability investigation |
| **04 — Power BI** | Data modeling, DAX, interactive reporting, and decision support |

The dataset contains **9,994 transaction records from 2014–2017**, covering customers, products, regions, segments, sales, profit, discounts, and order information.
---
## Power BI Report
The final report follows a decision-oriented analytical flow:
### 1. Executive Pulse — *What happened?*
![Executive Pulse](05-Assets/01-Executive%20Pulse.PNG)
Tracks sales, profit, margin, orders, customers, YoY performance, regional performance, category performance, and sales momentum.
### 2. Profitability Diagnostic — *Why did it happen?*
![Profitability Diagnostic](05-Assets/02-Profitability%20Diagnostic.PNG)
Examines sales vs. profit by sub-category, discount-level profitability, regional and segment performance, monthly profit trends, and loss-making orders.
### 3. Action Center — *What should we do?*
![Action Center](05-Assets/03-Action%20Center.PNG)
Translates analytical findings into three priorities: **control high-discount risk, investigate profitability gaps, and protect profitable growth**.
### 4. Data Info — *How was it built?*
![Data Info](05-Assets/04-Data%20Info.PNG)
Documents the dataset, Excel → SQL Server → Power BI workflow, data model, and key metric definitions.
---
## Key Insights
- The business generated **$2.30M in sales** and **$289.8K in profit**, with an overall **12.6% profit margin**.
- Sales and profit increased approximately **46.9%** and **50.2% YoY**, respectively, in the overall report view.
- **Technology** delivered the strongest category profitability, while **Furniture** generated substantial sales with considerably weaker margins.
- **Copiers** emerged as the leading sub-category by profit.
- The **West** was the strongest region by profitability.
- **High-discount transactions generated negative aggregate profit**, highlighting discounting as a key profitability risk.
- Several sub-categories generated meaningful revenue without proportional profit, reinforcing the need to evaluate **profitability alongside sales**.
---
## Recommendations
**Tighten discount controls**  
Review high-discount transactions in loss-making products and segments before extending aggressive discounts.
**Improve weak sub-categories**  
Investigate products generating meaningful sales but weak or negative profit across customer segments and regions.
**Protect profitable growth**  
Prioritize products and markets that combine strong sales with healthy margins rather than pursuing revenue growth alone.
---
## Tools & Skills
**Excel:** Data cleaning • Validation • PivotTables • Formulas • Exploratory analysis  
**SQL Server:** Aggregations • CASE • Date functions • String functions • Business analysis  
**Power BI:** Data modeling • DAX • Time intelligence • KPIs • Slicers • Bookmarks • Conditional formatting • Interactive reporting
---
## Repository Structure
```text
01-Data/       → Dataset
02-Excel/      → Data preparation and Excel analysis
03-SQL/        → SQL Server business analysis
04-Power BI/   → Final Power BI report and documentation
05-Assets/     → Dashboard screenshots
```
### Explore the Technical Work
- [Excel Analysis](02-Excel/)
- [SQL Server Analysis](03-SQL/)
- [Power BI Report](04-Power%20BI/)
---
## Project Outcome

This project demonstrates an end-to-end analytics workflow that moves from **data preparation → business analysis → interactive reporting → profitability diagnosis → actionable recommendations**.
