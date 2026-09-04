# Power BI Report
This folder contains the final interactive Power BI report developed for the **Superstore Sales Data Analysis** project.
## Report Overview
The report transforms the analyzed Superstore data into an interactive business intelligence solution, focused on sales performance, profitability, and management decision-making.
The report contains four pages:
### 1. Executive Pulse
Provides a high-level view of business performance, including:
- Total Sales
- Total Profit
- Profit Margin
- Total Orders
- Total Customers
- Year-over-Year performance
- Regional and category performance
- Monthly sales trends
### 2. Profitability Diagnostic
Investigates the drivers of profitability and loss through:
- Sales vs. Profit analysis by sub-category
- Discount-level profitability
- Regional and segment performance
- Monthly profit trends
- Loss-order trends
- Interactive sub-category insights
### 3. Action Center
Translates analytical findings into business priorities and recommendations, focusing on:
- Discount risk
- Profitability gaps
- Profitable growth opportunities
- High-discount profit
- Loss-making orders
- Profitable sales
### 4. Data Info
Document the analytical foundation of the report, including:
- Dataset overview
- Excel → SQL Server → Power BI workflow
- Data model
- Key metric definitions
## Key Power BI Features
- Interactive report navigation
- DAX measures and calculated KPIs
- Year-over-Year analysis
- Dedicated Date table
- Dynamic filtering and cross-filtering
- Synchronized slicers across report pages
- Bookmark-based filter panels
- Functional reset controls
- Conditional formatting
- Interactive profitability diagnostics
## Data Model
The Power BI model uses a dedicated **Date table** connected to the Superstore transaction table through an active one-to-many relationship based on Order Date.
## File
The `.pbix` file in this folder contains the complete interactive Power BI report.

> **Note:** Power BI Desktop is required to open and interact with the `.pbix` file.
