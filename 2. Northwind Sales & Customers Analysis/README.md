## Northwind SQL Analysis – SQL Portfolio Project  
---

## Overview  
This project explores the **Northwind Traders Database**, a classic dataset used for learning relational databases.  
The goal is to answer **20 business-relevant questions** across four categories:  
- Basic SQL Queries  
- Joins & Aggregations  
- Business Insights  
- Advanced Analysis  

Each query is stored in its own folder with:  
- `query.sql` – the SQL code  
- `README.md` – explanation of the question, approach, and insights  
- `output.png` – (optional) screenshot of the results  

---

## Queries Covered  

### 🔹 Basic SQL Queries (Q1–Q5)  
1. List all customers details  
2. All products with unit price & category  
3. Show all orders placed in 1997  
4. Top 5 most expensive products  
5. Count the number of customers in each country  

### 🔹 Joins & Aggregations (Q6–Q10)  
6. Find how many orders were processed by each employee  
7. Find the top 10 customers by total orders placed  
8. Show all products along with their supplier’s company name and city  
9. Calculate total revenue for each product  
10. Find the average order value for each customer  

### 🔹 Business Insights (Q11–Q15)  
11. Identify the top 5 countries by total sales revenue  
12. Which shipper handled the most orders?  
13. Find the most popular product category by sales volume  
14. List the top 5 employees ranked by total sales generated  
15. Show monthly sales trends (sales per month across all years)  

### 🔹 Advanced Analysis (Q16–Q20)  
16. Which suppliers provide the most products  
17. Employee handling the highest number of customers  
18. Customers who have not placed any orders  
19. Rank products by sales revenue within each category (window function)  
20. Calculate year-over-year sales growth  

---

## Tech Stack  
- **SQL**: PostgreSQL  
- **Dataset**: Northwind Traders sample database (customers, orders, products, suppliers, employees, shippers, categories, territories, regions).  
- **Visualization**: Screenshots of query outputs  

---

## Schema Diagram  

```mermaid
erDiagram
  customers {
    varchar customer_id PK
    varchar company_name
    varchar contact_name
    varchar city
    varchar country
  }
  orders {
    int order_id PK
    varchar customer_id FK
    int employee_id FK
    int ship_via FK
    date order_date
    varchar ship_country
  }
  order_details {
    int order_id FK
    int product_id FK
    numeric unit_price
    int quantity
  }
  products {
    int product_id PK
    varchar product_name
    int supplier_id FK
    int category_id FK
    numeric unit_price
  }
  suppliers {
    int supplier_id PK
    varchar company_name
    varchar city
  }
  categories {
    int category_id PK
    varchar category_name
  }
  employees {
    int employee_id PK
    varchar first_name
    varchar last_name
  }
  shippers {
    int shipper_id PK
    varchar company_name
  }
  territories {
    int territory_id PK
    int region_id FK
  }
  region {
    int region_id PK
    varchar region_description
  }
  employee_territories {
    int employee_id FK
    int territory_id FK
  }

  customers ||--o{ orders : places
  orders ||--o{ order_details : contains
  order_details }o--|| products : "for"
  products }o--|| suppliers : "supplied_by"
  products }o--|| categories : "belongs_to"
  orders }o--|| employees : "handled_by"
  orders }o--|| shippers : "shipped_via"
  territories }o--|| region : "part_of"
  employees ||--o{ employee_territories : "manages"
  territories ||--o{ employee_territories : "covered_by"
