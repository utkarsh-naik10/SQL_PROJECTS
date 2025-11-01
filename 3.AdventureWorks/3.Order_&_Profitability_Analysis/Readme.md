# AdventureWorks - Order & Profitability Analysis

This folder is part of the **SQL PROJECT → AdventureWorks** series.  
It focuses on analyzing profitability, high-value orders, and average order values across different regions.  
Each query looks at key sales and revenue metrics to better understand product performance and order behavior.

---

## 📂 Folder Structure
```
SQL PROJECT
│
└── AdventureWorks
    │
    └── 3.Order_&_Profitability_Analysis
        ├── 8.High_Value_Orders.sql
        ├── 9.Profitability_by_Product.sql
        ├── 10.Average_Order_Value_by_Region.sql
        ├── README.md
        │
        └── result_snapshots/
            ├── 8.High-Value_Orders.png
            ├── 9.Profitability_by_Product.png
            └── 10.Average_Order_Value_by_Region.png
```
---

---

## 🧩 Queries & Insights

### 1️⃣ High-Value Orders  
**File:** `8.High_Value_Orders.sql`

**Description:**  
Identifies high-value customer orders and calculates running totals, cumulative sales, and overall contribution percentage.  
This helps track which large orders drive the majority of total revenue.

**Result Snapshot:**  
![High-Value Orders](result_snapshots/8.High-Value_Orders.png)

**Insights:**  
- High-value orders significantly contribute to total sales volume.  
- A small number of large transactions account for a major portion of revenue (Pareto-like pattern).  
- Tracking these helps identify premium customers and possible upselling opportunities.

---

### 2️⃣ Profitability by Product  
**File:** `9.Profitability_by_Product.sql`

**Description:**  
Calculates total revenue, total cost, and total profit for each product to understand which SKUs generate the highest margin.

**Result Snapshot:**  
![Profitability by Product](result_snapshots/9.Profitability_by_Product.png)

**Insights:**  
- The **Mountain-200 series** (especially Black variants) shows the highest profitability.  
- Profit margins are strong across multiple product lines, particularly in premium bike categories.  
- Helps in pricing strategy and identifying high-return products worth scaling up.  
- Lower-margin items can be analyzed further for cost optimization.

---

### 3️⃣ Average Order Value by Region  
**File:** `10.Average_Order_Value_by_Region.sql`

**Description:**  
Calculates and compares the average order value (AOV) by sales territory.  
Also measures the difference between each region’s AOV and the global average.

**Result Snapshot:**  
![Average Order Value by Region](result_snapshots/10.Average_Order_Value_by_Region.png)

**Insights:**  
- The **Central** and **Northeast** territories show the highest AOV, significantly above the global average.  
- **Germany** and **Australia** lag behind, with AOV below the global benchmark.  
- Indicates stronger spending patterns in domestic markets compared to international ones.  
- Useful for region-specific pricing and sales strategy adjustments.

---

## 🧠 Key Takeaways
- Product profitability is dominated by high-end models, especially in the **Mountain Bike** series.  
- Average order values differ widely by region — domestic sales outperform international markets.  
- A small segment of large-value orders drives the majority of revenue.  
- These insights can support inventory planning, pricing decisions, and regional sales targeting.

---

## 🗄️ Database Info
- **Database:** AdventureWorks  
- **Environment:** SSMS (SQL Server Management Studio)  
- **Queries Written In:** Visual Studio Code  
- **Snapshots Taken From:** VS Code SQL Output  
- **Schemas Used:** Sales, Production  

---

## ⚙️ Notes
- Queries are written and tested in **VS Code**, connected to the AdventureWorks database.  
- Result snapshots are captured directly from the VS Code output.  
- Each query and image are aligned for easy comparison and review.  
- The analysis supports understanding key profitability and order behavior patterns.

---

**Author:** Utkarsh Naik   
**Project:** SQL PROJECT → AdventureWorks → Order & Profitability Analysis  
**Date:** 2025
