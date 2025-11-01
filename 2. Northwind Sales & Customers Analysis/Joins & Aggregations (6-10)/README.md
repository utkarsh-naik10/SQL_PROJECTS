# 🔗 Northwind Sales & Customers Analysis — Joins & Aggregations

**Project:** Northwind Sales & Customers Analysis (SQL)  
**Objective:** Explore insights through SQL joins and aggregation queries — focusing on employees, customers, products, and revenue analysis.

---

## 👩‍💼 6️⃣ Total Number of Orders Handled by Each Employee
**File:** `6. total number of orders handled by each employee.sql`  
**Image:** `Result_Images/2.Joins_&_Aggregations/6. total number of orders handled by each employee`

- Displays how many orders each employee has managed.  
- **Margaret Peacock** handled the **highest number of orders (156)**, followed by **Janet Leverling (127)** and **Nancy Davolio (123)**.  
- The lowest performers include **Steven Buchanan (42)** and **Anne Dodsworth (43)**.  

💡 *Insight:*  
The distribution shows that a few employees handle a significantly larger workload. Margaret and Janet likely serve as senior or high-performing sales staff.

---

## 👥 7️⃣ Top 10 Customers Who Placed the Highest Number of Orders
**File:** `7. top 10 customers who placed the highest number of orders.sql`  
**Image:** `Result_Images/2.Joins_&_Aggregations/7. top 10 customers who placed the highest number of orders`

- Lists the customers who placed the most orders.  
- **Jose Pavarotti (SAVEA)** placed the highest number of orders (**31**), followed by **Roland Mendel (ERNST)** with **30**.  
- Other top customers include **Horst Kloss**, **Maria Larsson**, and **Patricia McKenna**.  

💡 *Insight:*  
A few loyal customers contribute to a large portion of total sales. These could be **key accounts** deserving special attention or retention programs.

---

## 🏷️ 8️⃣ Show Products Along with Supplier Name and City
**File:** `8. Show products along with supplier name and contact city.sql`  
**Image:** `Result_Images/2.Joins_&_Aggregations/8. Show products along with supplier name and contact city`

- Displays a merged view of **product details**, their **supplier companies**, and **cities**.  
- Examples include:
  - “Chai” supplied by *Specialty Biscuits, Ltd.* from *Manchester*  
  - “Chef Anton’s Cajun Seasoning” from *New Orleans Cajun Delights*  
  - “Mishi Kobe Niku” supplied by *Tokyo Traders*.  

💡 *Insight:*  
The data highlights the **global supply chain reach** of Northwind — with suppliers located in **Europe, Asia, and North America**, ensuring diverse product sourcing.

---

## 💰 9️⃣ Total Revenue for Each Product
**File:** `9. total revenue for each product.sql`  
**Image:** `Result_Images/2.Joins_&_Aggregations/9. total revenue for each product`

- Calculates total sales revenue per product using aggregation functions.  
- **Côte de Blaye** generates the highest revenue (**$149,984.20**), followed by **Thüringer Rostbratwurst** and **Raclette Courdavault**.  
- Top 10 products make up a large portion of total sales value.  

💡 *Insight:*  
High-value items like premium wines and meats drive the majority of revenue. The business could focus on **stocking and promoting top-performing items** for profit maximization.

---

## 📦 🔢 10️⃣ Average Order Value for Each Customer
**File:** `10. average order value for each customer.sql`  
**Image:** `Result_Images/2.Joins_&_Aggregations/10. average order value for each customer`

- Calculates the **average order value (AOV)** per customer.  
- **Zbigniew Piestrzeniewicz** has the highest average order value (**$504.56**), followed by **Daniel Tonini ($498.01)** and **Hanna Moos ($462.83)**.  
- Some customers like **Francisco Chang** and **Eduardo Saavedra** have lower AOVs, around **$100–$170**.  

💡 *Insight:*  
The data highlights **high-spending customers** who should be prioritized for retention. AOV can help guide **premium customer loyalty strategies** or **targeted marketing offers**.

---

## 📊 Summary of Findings
| Query | Focus Area | Key Finding |
|--------|-------------|--------------|
| 6️⃣ | Employee Performance | Margaret Peacock handled the most orders |
| 7️⃣ | Customer Activity | A few loyal customers drive high order volume |
| 8️⃣ | Supplier Network | Diverse suppliers across multiple regions |
| 9️⃣ | Product Revenue | High-end items generate most sales |
| 🔟 | Customer Value | Some customers spend 3–4x the average |

---

📂 **Folder Structure**
```
/SQL_Projects
└── 2.Northwind Sales & Customers Analysis
    └── 2.Joins & Aggregations(6-10)
        ├── Result_Images
        │ ├── 6. total number of orders handled by each employee
        │ ├── 7. top 10 customers who placed the highest number of orders
        │ ├── 8. Show products along with supplier name and contact city
        │ ├── 9. total revenue for each product
        │ └── 10. average order value for each customer
        │
        ├── 6. total number of orders handled by each employee.sql
        ├── 7. top 10 customers who placed the highest number of orders.sql
        ├── 8. Show products along with supplier name and contact city.sql
        ├── 9. total revenue for each product.sql
        ├── 10. average order value for each customer.sql
        └── README.md
```


---

📌 **Author:** Utkarsh Naik  
📈 **Project Type:** SQL-Based Business & Customer Analysis  
