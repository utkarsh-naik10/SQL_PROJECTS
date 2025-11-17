# AdventureWorks - Product & Market Insights

This folder is part of the **SQL PROJECT → AdventureWorks** series.  
It focuses on product-level insights, category spending patterns, regional preferences, and vendor contributions.  
All SQL queries were executed in **SQL Server Management Studio (SSMS)**, and snapshots were captured from the SSMS results grid.

---

## 📂 Folder Structure
```
SQL PROJECT
│
└── AdventureWorks
│
└── 5.Product_&_Market_Insights
├── 14.Frequently Bought Together.sql
├── 15.Top Customers by Category.sql
├── 16.Regional Product Preference.sql
├── 17.Top Suppliers.sql
├── README.md
│
└── result_snapshots/
├── 14.Frequently Bought Together.png
├── 15.Top Customers by Category.png
├── 16.Regional Product Preference.png
└── 17.Top Suppliers.png
```

---

## 🧩 Queries & Insights

### 1️⃣ Frequently Bought Together  
**File:** `14.Frequently Bought Together.sql`

**Description:**  
Identifies pairs of products that customers frequently purchase together.  
This helps in understanding buying patterns and potential cross-sell opportunities.

**Result Snapshot:**  
![Frequently Bought Together](result_snapshots/14.Frequently%20Bought%20Together.png)

**Insights:**  
- Product pair **870 & 871** appears the most, purchased together **1692 times**.  
- Items **870, 871, 872, 712, 715, 711** dominate the top combinations.  
- Very strong association patterns, useful for combo deals, recommendations, and store layout decisions.

---

### 2️⃣ Top Customers by Category  
**File:** `15.Top Customers by Category.sql`

**Description:**  
Shows the highest-spending customer for each product category (Bikes, Components, Clothing, Accessories).

**Result Snapshot:**  
![Top Customers by Category](result_snapshots/15.Top%20Customers%20by%20Category.png)

**Insights:**  
- **Category: Bikes** → Customer **29818** leads with **₹783,100+** spent.  
- **Category: Components** → Customer **29722** tops with **₹206,637+**.  
- **Category: Clothing** and **Accessories** also show clear top customers.  
- Useful for targeted promotions and identifying power users per category.

---

### 3️⃣ Regional Product Preference  
**File:** `16.Regional Product Preference.sql`

**Description:**  
Identifies which products are most popular in each territory based on quantity sold.

**Result Snapshot:**  
![Regional Product Preference](result_snapshots/16.Regional%20Product%20Preference.png)

**Insights:**  
- Product **712** dominates in most territories (Canada, Central, Southwest).  
- Product **870** is popular in Northwest, Germany, and Australia.  
- These insights reflect clear regional buying preferences.  
- Useful for territory-wise inventory planning and marketing.

---

### 4️⃣ Top Suppliers  
**File:** `17.Top Suppliers.sql`

**Description:**  
Shows total revenue generated from products supplied by each vendor.

**Result Snapshot:**  
![Top Suppliers](result_snapshots/17.Top%20Suppliers.png)

**Insights:**  
- **Team Athletic Co.**, **Integrated Sport Products**, and **Green Lake Bike Co.** are top revenue contributors.  
- Vendor sales vary widely, showing clear differences in product demand and supply scale.  
- Helps evaluate vendor importance and negotiate better terms.

---

## 🧠 Key Takeaways
- Strong product associations reveal clear upsell and cross-sell opportunities.  
- Category-wise top customers help with targeted marketing campaigns.  
- Product preferences vary significantly across territories.  
- Vendor revenue analysis highlights key suppliers worth prioritizing.

---

## 🗄️ Database Info
- **Database:** AdventureWorks  
- **Environment:** SQL Server Management Studio (SSMS)  
- **Queries Written & Executed In:** SSMS  
- **Snapshots Taken From:** SSMS Results Grid  
- **Schemas Used:** Sales, Production, Purchasing  

---

## ⚙️ Notes
- All outputs were generated directly inside SSMS.  
- Screenshots reflect actual live query results.  
- Each query file has a corresponding snapshot for clarity.

---

**Author:** Utkarsh Naik  
**Project:** SQL PROJECT → AdventureWorks → Product & Market Insights  
**Date:** 2025

