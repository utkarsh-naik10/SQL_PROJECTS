# 📊 Northwind Sales & Customers Analysis — Basics

**Project:** Northwind Sales & Customers Analysis (SQL)  
**Objective:** Explore foundational queries from the Northwind dataset to understand customers, products, orders, and geographic distribution.

---

## 🧾 1️⃣ List All Customer Details
**File:** `1. List all customers details.sql`  
**Image:** `1. List all customers details.png`

- Displays complete information for each customer — name, city, and country.  
- Helps understand the global customer base and the diversity of clients across regions.  
- Notable presence in **Europe, North & South America**, and **Asia**.

💡 *Insight:*  
The dataset represents a globally distributed customer network, with strong representation from **Germany**, **Mexico**, **UK**, and **France** — key markets in the Northwind business dataset.

---

## 🏷️ 2️⃣ All Products with Unit Price & Category
**File:** `2. All products with unit price & category.sql`  
**Image:** `2. All products with unit price & category.png`

- Lists each product along with its **price** and **category name**.  
- Categories include **Beverages, Condiments, Produce, Dairy Products, Seafood**, and more.  
- Prices range widely from **$6** to nearly **$100**, showing a varied product portfolio.

💡 *Insight:*  
The mix of **low-cost consumables** and **premium items (like Mishi Kobe Niku)** suggests a broad pricing strategy — catering to both budget and gourmet customers.

---

## 📦 3️⃣ Show All Orders Placed in 1997
**File:** `3. Show all orders placed in 1997.sql`  
**Image:** `3. Show all orders placed in 1997.png`

- Extracts all orders shipped in **1997**, including product name, shipping city, country, and date.  
- Orders were shipped globally to destinations like **UK, USA, Austria, Italy**, and **Venezuela**.  
- The highest order activity was seen early in the year (January–March).

💡 *Insight:*  
The company had **strong early-year demand**, particularly from **European** and **North American** regions, indicating possible seasonal or budget cycle trends.

---

## 💰 4️⃣ Top 5 Most Expensive Products
**File:** `4. Top 5 most expensive products.sql`  
**Image:** `4. Top 5 most expensive products.png`

- Identifies the **five highest-priced products** by unit price.  
- Top products include:
  - Côte de Blaye — **$263.50**  
  - Thüringer Rostbratwurst — **$123.79**  
  - Mishi Kobe Niku — **$97.00**  
  - Sir Rodney’s Marmalade — **$81.00**  
  - Carnarvon Tigers — **$62.50**

💡 *Insight:*  
These items are primarily **luxury food and meat products**, suggesting a premium product line within the Northwind catalog aimed at high-end buyers.

---

## 🌍 5️⃣ Count the Number of Customers in Each Country
**File:** `5. Count the number of customers in each country.sql`  
**Image:** `5. Count the number of customers in each country.png`

- Displays the total number of customers per country.  
- **Top countries by customer count:**  
  - USA — **13**  
  - Germany — **11**  
  - France — **11**  
  - Brazil — **9**  
  - UK — **7**

💡 *Insight:*  
The **USA** leads in customer base, followed by key European markets. The data shows Northwind’s strong presence in **Western markets** with potential for expansion in underrepresented regions like **Asia and Africa**.

---

## 📈 Summary
| Query | Focus Area | Key Finding |
|--------|-------------|--------------|
| 1️⃣ Customers List | Global Clients | Wide international spread |
| 2️⃣ Products by Category | Product Pricing | Mix of affordable and premium items |
| 3️⃣ Orders in 1997 | Sales Trends | High order frequency early in 1997 |
| 4️⃣ Expensive Products | Pricing Strategy | Strong luxury segment presence |
| 5️⃣ Customers by Country | Market Reach | USA, Germany, and France dominate |

---

📂 **Folder Structure**
```
/SQL_Projects
└── 2.Northwind_Sales_&_Customers_Analysis
  └── 1.Basics(1-5)
    ├── Result_Images
    │ ├── 1. List all customers details
    │ ├── 2. All products with unit price & category
    │ ├── 3. Show all orders placed in 1997
    │ ├── 4. Top 5 most expensive products
    │ └── 5. Count the number of customers in each country
    │
    ├── 1. List all customers details.sql
    ├── 2. All products with unit price & category.sql
    ├── 3. Show all orders placed in 1997.sql
    ├── 4. Top 5 most expensive products.sql
    ├── 5. Count the number of customers in each country.sql
    └── README.md
```

---

📌 **Author:** Utkarsh Naik   
📈 **Project Type:** SQL-Based Business & Customer Data Analysis


