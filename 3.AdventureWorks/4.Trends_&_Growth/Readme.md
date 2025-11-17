# AdventureWorks - Trends & Growth

This folder is part of the **SQL PROJECT → AdventureWorks** series.  
It focuses on analyzing long-term sales trends, yearly growth patterns, product performance shifts, and quarterly customer retention.  
All queries were executed directly in **SQL Server Management Studio (SSMS)**, and snapshots were taken from the SSMS results window.

---

## 📂 Folder Structure
```
SQL PROJECT
│
└── AdventureWorks
│
└── 4.Trends_&_Growth
├── 11.Sales_Trend_Analysis.sql
├── 12.Dynamic_Ranking.sql
├── 13.Quarterly_Cohort_Retention.sql
├── README.md
│
└── result_snapshots/
├── 11.Sales_Trend_Analysis.png
├── 12.Dynamic_Ranking.png
└── 13.Quarterly_Cohort_Retention.png
```

---

## 🧩 Queries & Insights

### 1️⃣ Sales Trend Analysis  
**File:** `11.Sales_Trend_Analysis.sql`

**Description:**  
Calculates yearly total revenue and year-over-year (YoY) growth.  
Useful for identifying strong periods, slowdowns, and overall sales trajectory.

**Result Snapshot:**  
![Sales Trend Analysis](result_snapshots/11.Sales_Trend_Analysis.png)

**Insights:**  
- Strong growth between **2011 → 2012** with a **+166.15% YoY increase**.  
- Moderate growth in **2013** at **+29.96%**.  
- Significant drop in **2014**, falling **-54.21% YoY**, indicating a slowdown.  
- Clear boom phase followed by contraction.

---

### 2️⃣ Dynamic Ranking (Top Products by Year)  
**File:** `12.Dynamic_Ranking.sql`

**Description:**  
Ranks products each year based on total sales.  
Helps track how customer preferences shift over time.

**Result Snapshot:**  
![Dynamic Ranking](result_snapshots/12.Dynamic_Ranking.png)

**Insights:**  
- In **2011**, *Road-150 Red, 56* ranked #1 with the highest annual sales.  
- *Mountain-100 Black, 42* and *Mountain-100 Silver, 38* also consistently perform well.  
- Ranking shows strong competition between Road series and Mountain series in early years.  
- Provides a clear view of top-performing SKUs and trend shifts.

---

### 3️⃣ Quarterly Cohort Retention  
**File:** `13.Quarterly_Cohort_Retention.sql`

**Description:**  
Tracks customer cohorts based on their first purchase quarter, then checks how often they return in future years/quarters.

**Result Snapshot:**  
![Quarterly Cohort Retention](result_snapshots/13.Quarterly_Cohort_Retention.png)

**Insights:**  
- Many customers from **2011 Q2** continue placing orders in **2012 & 2013**, showing strong retention.  
- Returning customers appear consistently across multiple quarters.  
- Over 31,000 rows show ongoing engagement across years.  
- Indicates that early cohorts are loyal and maintain a stable purchase cycle.

---

## 🧠 Key Takeaways
- Sales peaked in 2012–2013 before declining in 2014.  
- Product rankings reveal clear preference shifts between Road and Mountain bikes.  
- Customer retention across years is strong, especially for early acquisition cohorts.  
- These insights help understand long-term behavior across sales, customers, and products.

---

## 🗄️ Database Info
- **Database:** AdventureWorks  
- **Environment:** SQL Server Management Studio (SSMS)  
- **Queries Written & Executed In:** SSMS  
- **Snapshots Taken From:** SSMS Results Grid  
- **Schemas Used:** Sales, Production, Customer  

---

## ⚙️ Notes
- All queries were executed in **SSMS** 
- Screenshots reflect actual output from SSMS after successful execution.  
- Each SQL file has a matching result image for easy reference and documentation.

---

**Author:** Utkarsh Naik  
**Project:** SQL PROJECT → AdventureWorks → Trends & Growth  
**Date:** 2025

