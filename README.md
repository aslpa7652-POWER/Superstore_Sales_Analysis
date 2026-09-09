📊 US Superstore Sales & Logistics Analytics (End-to-End Business Intelligence)
📌 Project Overview
This project presents an enterprise-grade, end-to-end data analytics pipeline built on the US Superstore retail transactions dataset containing 9,800 records. The workflow moves from raw transactional records to actionable business intelligence by utilizing Python for data cleansing and feature engineering, MySQL for relational modeling and complex analytical queries, and Power BI for executive visual reporting.

🏗️ Architecture & Pipeline Flow
Extraction & Cleaning (Python):

Ingested 9,800 raw transactional records.

Resolved 11 null postal codes for Burlington, Vermont via domain logic.

Standardized order and shipping timestamps into ISO datetime format.

Engineered shipping_duration in days to monitor SLA compliance.

Relational Analytics (MySQL):

Modeled relational database schema in MySQL.

Authored 42+ analytical business queries to audit performance metrics.

Applied Window Functions (LAG(), RANK(), ROW_NUMBER()) for YoY/MoM growth and product ranking.

Visual Dashboard (Power BI):

Engineered 4 executive KPI summary cards.

Designed a geospatial state-level bubble map for regional density.

Built 5 dynamic dimension slicers: Region, Year, Segment, Category, and Ship Mode.

🎯 Key Business Metrics & Findings
Total Gross Revenue: $2,261,536.78 across 49 US States.

Total Orders: 4,922 unique orders across 9,800 transaction lines.

Average Order Value (AOV): $230.77 mean spend per item.

Active Customer Base: 793 unique client accounts.

Avg Shipping Turnaround: 3.96 days across all fulfillment tiers.

🔍 Analytical Highlights
Annual Growth Trajectory: Sales grew from $479,856.21 in 2015 to $722,052.02 in 2018, registering a 4-year net growth of +50.5%.

Category Contribution: Technology led national revenue with $827,455.87 (36.6% share) and the highest AOV ($456.40), while Office Supplies drove order volume with 5,909 items sold.

Top Sub-Categories: Phones ($327,782.45) and Chairs ($322,822.73) generated nearly 29% of company revenue.

Customer Segment Breakdown: Consumers (B2C) drove 50.8% of sales ($1.15M), while Home Office buyers had the highest average ticket size ($243.40 AOV).

Geographical Concentration: California ($446,306.46) and New York ($306,361.15) alone generated 33.2% of national sales.

Logistics Performance: Standard Class handled 59.8% of volume (5,859 orders) with an average delivery time of 5.01 days, whereas Same Day orders achieved dispatch in 0.04 days.

Seasonality Trends: Sales peaked heavily in Q4, led by November ($350,161.71) and December ($321,480.17) due to Black Friday promotions and corporate fiscal-year budget clearance.

📂 Repository File Structure
superstore_row_data.csv: Raw transactions dataset containing 9,800 records and 18 columns.

superstore_sales_data.ipynb: Jupyter Notebook detailing data cleaning, null imputation, and feature engineering.

superstore_sales_python_clean_data.csv: Cleaned dataset containing 22 columns with zero null values.

superstore_sql_analysis_CMPT.sql: MySQL script containing 42 business analytical queries and CTE calculations.

supers sales analysis.pbix: Interactive Power BI report file with multi-page data models and visual dashboards.

Superstore_Sales_Analysis.pptx: 10-slide executive presentation deck summarizing core findings.

README.md: Complete project documentation and portfolio summary.

🛠️ Tech Stack & Methodologies Demonstrated
Python (Pandas, NumPy, Matplotlib, Seaborn): Audited schemas, imputed missing postal values, converted date strings to datetime objects, and created delivery duration metrics.

SQL (MySQL): Multi-level aggregations, common table expressions (CTEs), and window functions (LAG(), RANK()).

Power BI: Data modeling, dynamic measures, interactive slicers, bubble maps, line trend charts, and distribution charts.

Business Analytics: Sales forecasting, cohort segmentation, supply chain turnaround, and strategic inventory planning.

💡 Strategic Business Recommendations
Inventory Buffering for Q4: Pre-stock high-demand Technology hardware (Phones, Copiers) and Chairs ahead of September–November to mitigate stockout risks.

Accessory Attachment: Bundle lower-volume items (Fasteners, Labels) with high-ticket hardware (Chairs, Desks) to lift accessory margins.

B2B Home Office Packages: Focus targeted commercial marketing on Home Office clients who exhibit the highest basket spend ($243.40 AOV).

Logistics Optimization: Partner with regional carriers to compress Standard Class delivery turnaround from 5.0 days down to sub-3.5 days.
