# 🧠 Northwind Sales & Customers Analysis — Advanced Queries (16–20)

**Project:** Northwind Sales & Customers Analysis (SQL)  
**Objective:** Perform advanced SQL analysis using subqueries, aggregations, and ranking functions to extract deeper business insights.

---

## 🏭 1️⃣6️⃣ Which Suppliers Provide the Most Products
**File:** `16. which suppliers provide the most products.sql`  
**Image:** `16. which suppliers provide the most products`

- Lists suppliers ranked by the number of products they supply.  
- Top suppliers include **Pavlova Ltd., Plutzer Lebensmittelgroßmärkte, and Specialty Biscuits Ltd.**, each providing **5 products**.  
- Several others, like **New Orleans Cajun Delights** and **Formaggi Fortini**, supply 3–4 products.  

💡 *Insight:*  
A few key suppliers provide a large share of the inventory.  
These suppliers are vital to operations and may benefit from **priority partnerships or bulk agreements**.

---

## 👩‍💼 1️⃣7️⃣ Employee Handling the Highest Number of Customers
**File:** `17. employee handling the highest number of customers.sql`  
**Image:** `17. employee handling the highest number of customers`

- Displays employees and the number of customers they manage within their region.  
- **Andrew Fuller, Steven Buchanan, and Anne Dodsworth** each handle **7 customers**, indicating balanced workloads across territories.  
- The **Western region** (Robert King) has the highest customer reach with **10 territories**.  

💡 *Insight:*  
Customer distribution is fairly balanced, but the **Western and Eastern regions** may need more support to handle their wide client coverage efficiently.

---

## 🧾 1️⃣8️⃣ Customers Who Have Not Placed Any Orders
**File:** `18. customers who have not placed any orders.sql`  
**Image:** `18. customers who have not placed any orders`

- Identifies customers with zero recorded orders.  
- Results show only **two customers — FISSA Fabrica Inter. Salchich and Paris Spécialités** — who haven’t made any purchases.  

💡 *Insight:*  
Low inactivity rate among customers is a **good retention sign**.  
These inactive customers can be targeted with **special promotions** to encourage engagement.

---

## 💰 1️⃣9️⃣ Sales Revenue Within Each Category
**File:** `19. sales revenue within each category.sql`  
**Image:** `19. sales revenue within each category`

- Shows total sales for each product within its category.  
- **Beverages** lead the list, with products like **Côte de Blaye**, **Ipoh Coffee**, and **Chang** ranking highest.  
- **Condiments** such as **Vegie-spread** and **Louisiana Fiery Hot Pepper Sauce** also perform strongly.  

💡 *Insight:*  
Beverages dominate sales, showing **consistent demand and profitability**.  
The company could focus marketing and inventory planning around these high-performing categories.

---

## 📆 2️⃣0️⃣ Year-Over-Year Growth Analysis
**File:** `20. year-over-year growth.sql`  
**Image:** `20. year-over-year growth`

- Compares total yearly sales and calculates year-over-year (YoY) growth.  
- Sales increased sharply from **1996 ($226K)** to **1997 ($658K)** — a **190.9% growth rate**.  
- However, 1998 saw a **28.6% decline** in total sales.  

💡 *Insight:*  
While 1997 showed exceptional growth, the 1998 slowdown may suggest **market saturation or reduced order frequency**.  
Further analysis on customer churn and seasonal trends is recommended.

---

## 📊 Summary of Findings
| Query | Focus Area | Key Insight |
|--------|-------------|-------------|
| 1️⃣6️⃣ | Supplier Network | A few suppliers dominate inventory supply |
| 1️⃣7️⃣ | Employee-Customer Load | Fuller, Buchanan, and Dodsworth manage most customers |
| 1️⃣8️⃣ | Customer Engagement | Only two inactive customers — strong retention |
| 1️⃣9️⃣ | Product Category Revenue | Beverages category leads total sales |
| 2️⃣0️⃣ | Yearly Performance | Huge growth in 1997, moderate decline in 1998 |

---

## 📂 Folder Structure
```
/SQL_Projects
└── 2.Northwind_Sales_&_Customers_Analysis
    └── Advanced_Queries(16–20)
        ├── Result_Images
        │ ├── 16. which suppliers provide the most products
        │ ├── 17. employee handling the highest number of customers
        │ ├── 18. customers who have not placed any orders
        │ ├── 19. sales revenue within each category
        │ └── 20. year-over-year growth
        │
        ├── 16. which suppliers provide the most products.sql
        ├── 17. employee handling the highest number of customers.sql
        ├── 18. customers who have not placed any orders.sql
        ├── 19. sales revenue within each category.sql
        ├── 20. year-over-year growth.sql
        └── README.md
```

---

📌 **Author:** Utkarsh Naik  
📈 **Project Type:** SQL-Based Business Performance & Sales Analysis  
