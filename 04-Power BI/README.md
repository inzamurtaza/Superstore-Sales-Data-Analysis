# Power BI — Interactive Business Intelligence Report
This folder contains the final Power BI report for the **Retail Performance & Profitability Analysis** project.
The report brings the Excel preparation and SQL analysis together in an interactive solution designed to move from **performance monitoring → profitability diagnosis → business action**.
## Report File
`Superstore performance profitability analysis.pbix`
> Open the `.pbix` file in Power BI Desktop to explore the interactive report.
## Report Structure
The report contains four pages:
### 1. Executive Pulse — What happened?
Provides a high-level view of sales, profit, margin, orders, customers, Year-over-Year performance, and performance across regions, categories, and sub-categories.
### 2. Profitability Diagnostic — Why did it happen?
Explores the drivers behind profitability through sub-category performance, discount levels, regions, customer segments, monthly profit trends, and loss-making orders.
### 3. Action Center — What should we do?
Turns the analysis into three business priorities:
- Control high-discount risk
- Investigate profitability gaps
- Protect and grow profitable areas
### 4. Data Info — How was it built?
Documents the dataset, analytical workflow, data model, and definitions of the key metrics used throughout the report.
## Power BI Implementation
The report includes:
- Data modeling with a dedicated Date table
- DAX measures and calculated KPIs
- Year-over-Year analysis
- Dynamic filtering and cross-filtering
- Synchronized slicers across report pages
- Bookmark-based filter panels
- Reset controls
- Conditional formatting
- Interactive sub-category diagnostics
- Custom page navigation
## Design Approach
The report was designed as a connected analytical story rather than a collection of standalone dashboards:
**Executive Pulse → Profitability Diagnostic → Action Center**
This structure allows a user to identify a performance change, investigate what is driving it, and then move toward an appropriate business response.

Dashboard screenshots are available in [`05-Assets`](../05-Assets/).

**← Previous stage: [`03-SQL`](../03-SQL/)**
