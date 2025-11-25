# Bright-Coffee-Shop-Sales-CASETUDY
# Bright Coffee Shop Sales Analysis

## 📌 Project Overview
This project analyzes historical transactional data from **Bright Coffee Shop** to provide actionable business insights for the newly appointed CEO.  
The goal was to identify revenue drivers, peak sales periods, and product performance trends, and to recommend strategies for improving overall sales.

---

## 🛠️ Tools & Technologies Used
- **Snowflake (Data Warehouse)**  
  - Used to store and process large transactional datasets.  
  - Enabled efficient SQL queries, transformations, and grouping by time intervals.

- **SQL (Microsoft SQL Server, Databricks, MySQL Workbench, Google BigQuery)**  
  - Used for data cleaning and transformation.  
  - Key operations included casting unit prices, calculating total revenue, and grouping transactions into time buckets.

- **Excel / Power BI**
  - Used for pivot tables, dashboards, and visualizations.  
  - Helped present insights in a clear, visual format for decision-making.

- **Miro (Planning & Architecture)**  
  - Used to design the data flow and ETL pipeline architecture.  
  - Illustrated how data moves from source → processing → storage → analysis → presentation.

- **PowerPoint / Canva**  
  - Used to prepare the final presentation for the CEO.  
  - Combined visuals, insights, and recommendations into a professional report.

---

## 🔑 Methodology
1. **Data Preparation**
   - Converted raw Excel data into CSV format.
   - Loaded into Snowflake for structured processing.
   - Cleaned inconsistent unit price entries (e.g., `3,1` → `3.1`).
   - Created calculated fields such as `total_amount = unit_price * transaction_qty`.

2. **Data Transformation**
   - Grouped transactions into **30-minute / hourly buckets** to analyze time-based performance.
   - Aggregated sales by product type, category, and time intervals.

3. **Data Analysis**
   - Exported processed tables into Excel/Power BI.
   - Built pivot tables and dashboards to visualize:
     - Revenue by product category
     - Peak sales times
     - Best-selling and underperforming products
     - Payment method preferences

4. **Presentation**
   - Summarized findings in a CEO-ready presentation.
   - Highlighted recommendations and next steps for business growth.

---

## 📊 Key Findings
- **Top Products**: Coffee drinks generated the majority of revenue, with lattes and cappuccinos leading sales.  
- **Peak Hours**: Sales peaked between **7–9 AM** (morning rush) and **3–5 PM** (afternoon break).  
- **Best Day**: Saturdays showed the highest sales volume, while Tuesdays were the slowest.  
- **Payment Trends**: Card payments dominated, indicating strong customer preference for cashless transactions.  
- **Product Mix**: Pastries contributed less revenue but had higher margins, suggesting potential for upselling.  

---

## 📈 Recommendations
- Launch **marketing campaigns during slow time slots** (e.g., Tuesdays, mid-mornings).  
- **Stock more of best-selling items** (lattes, cappuccinos) to meet demand.  
- **Promote underperforming products** (teas, pastries) with bundle deals.  
- Implement a **loyalty program** targeting peak customer times.  
- Automate daily sales reporting and expand tracking across multiple locations.

---

## 🚀 Next Steps
- Scale reporting to multiple branches.  
- Integrate real-time dashboards for continuous monitoring.  
- Explore advanced analytics (predictive modeling, customer segmentation).  

---

## 📂 Deliverables
- **Miro Plan/Diagram** – Data flow & architecture.  
- **Processed Dataset** – Cleaned and transformed sales data in Excel/CSV.  
- **Pivot Tables & Dashboards** – Visual insights in Excel/Power BI.  
- **Presentation (PowerPoint/Canva)** – CEO-ready slides with findings & recommendations.  
- **SQL Scripts** – Code for transformations and aggregations.  
