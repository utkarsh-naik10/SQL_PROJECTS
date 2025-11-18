# 📁 Expert Level Analytics
Advanced SQL analysis performed on the Chinook Database.  
This directory contains multiple deep-dive analytical modules, each focusing on specific aspects of sales, customer patterns, product trends, artist performance, and geographic distribution.

---

## 📂 Folder Structure & Insights

### **1. Revenue Dashboard Queries**
Includes SQL scripts and result snapshots covering revenue breakdowns.

**Contains:**
- Total revenue by genre
- Total revenue by month
- Total revenue by year
- Revenue by artists
- Top customers by spending

**Insights:**
- Rock genre shows the highest total revenue.
- Monthly revenue values remain within a narrow range.
- USA contributes the highest total revenue.
- Iron Maiden appears among top revenue-generating artists.

---

### **2. Customer Segmentation (RFM Analysis)**
Provides Recency, Frequency, and Monetary metrics per customer.

**Contains:**
- Last purchase date
- Number of invoices per customer
- Total spend per customer

**Insights:**
- Several customers have placed 7 invoices.
- Total spend varies, with some customers above 45.
- Last purchase dates span multiple years and months.

---

### **3. Genre Revenue Comparison**
Compares revenue contribution and buyer distribution across genres.

**Contains:**
- Genre revenue totals and percentages
- Average track revenue per genre
- Unique buyer count per genre

**Insights:**
- Rock shows the highest revenue contribution and buyer volume.
- Latin and Metal follow next in total revenue.
- Average revenue per track is typically around 1.99 or 0.99 depending on the genre.

---

### **4. Artist Insights**
Analyzes artists across revenue, track count, and album count.

**Contains:**
- Artists with most album releases
- Most profitable artists
- Artists with most tracks sold

**Insights:**
- Iron Maiden leads in album releases, track count, and revenue.
- Led Zeppelin and Deep Purple also show high album and track volumes.

---

### **5. Product (Track) Analytics**
Detailed analysis of individual track performance.

**Contains:**
- Top revenue-generating tracks
- Tracks most frequently purchased
- Revenue by album
- Comparison of most expensive vs most sold tracks

**Insights:**
- “The Trooper” shows one of the highest track-level revenue values.
- Many tracks appear exactly twice in invoices.
- Certain albums record significantly higher revenue than others.

---

### **6. Geographic Insights**
Country-level analysis of invoices, customers, and revenue.

**Contains:**
- Invoice count by country
- Unique customers by country
- Revenue by billing country

**Insights:**
- All listed countries display an invoice count of 7.
- USA has the highest number of unique customers.
- USA leads in total sales, followed by Canada.

---

**Author:** Utkarsh Naik  
**Project:** SQL PROJECT → Chinook_Database  
**Date:** 2025
