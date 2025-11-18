# Customer Segmentation (RFM Analysis) — Expert Level Analytics

This folder contains SQL queries used to compute **RFM metrics** (Recency, Frequency, Monetary) for all customers in the Chinook database. Each metric has its own `.sql` file, and the output screenshots are placed inside the **`Result_Snapshots`** folder.

---
## Folder Structure

```
3.Expert_Level_Analytics/
   └── Customer Segmentation (RFM Analysis)/
         ├── Monetary.sql
         ├── Recency.sql
         ├── Frequency.sql
         ├── Result_Snapshots/
         └── README.md
```
---

## 1. Monetary — Total Spend per Customer

![Monetary_ total spend per customer](Result_Snapshots/Monetary_%20total%20spend%20per%20customer.png)

**Observation:**
Each customer is listed with a total spend value. The highest value in the output is **49.62**.

---

## 2. Recency — Last Purchase Date per Customer

![Recency](Result_Snapshots/Recency_%20last%20purchase%20date%20per%20customer.png)

**Observation:**
Each customer is assigned a last purchase date. Dates span across different months and years as shown in the results.

---

## 3. Frequency — Number of Invoices per Customer

![Frequency](Result_Snapshots/Frequency_number%20of%20invoices%20per%20customer.png)

**Observation:**
All listed customers show an **Order_Count** of **7** in the screenshot.

---

**Author:** Utkarsh Naik     
**Project:** SQL PROJECT → Chinook_Database    
**Date:** 2025



