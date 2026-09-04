# 01 — Data
This folder contains the source dataset used for the **Retail Performance & Profitability Analysis** project.
## Dataset
**File:** `Superstore_raw_data.csv`
The dataset contains transaction-level retail sales records covering **2014–2017**, including information on:
- Orders and customers
- Products, categories, and sub-categories
- Customer segments
- Geographic regions
- Sales and profit
- Discounts
- Order and shipping dates
## Dataset Profile

| Attribute | Value |
|---|---:|
| Records | 9,994 |
| Period | 2014–2017 |
| Unique Customers | 793 |
| Data Grain | Product line item within an order |

> **Note:** Order IDs can appear multiple times because a single customer order may contain multiple product line items.

## Role in the Workflow
This source dataset was taken forward to **Excel for data quality checks, validation, preparation, and initial exploration** before structured business analysis in SQL Server and reporting in Power BI.

**Next stage → [`02-Excel`](../02-Excel/)**
