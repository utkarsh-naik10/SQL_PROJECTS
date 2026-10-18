## Revenue and Product Analysis – Contoso Sales Analysis
---

## Overview

This project analyzes sales revenue in the **Contoso sample database** using PostgreSQL.

The goal is to answer business-relevant questions such as:
- Which product categories generate the highest net revenue?
- How did category revenue change between 2022 and 2023?
- How does median sales-line revenue vary across product categories?
- How much revenue comes from sales lines below versus at or above the median?
- How can sales lines be segmented into high-, medium-, and low-revenue tiers?

Each query focuses on a different aspect of revenue analysis, from examining individual sales records to comparing category performance and revenue distributions.

---

## Queries Covered

1. **Sales Since 2020** → Retrieve sales records from 2020 onward with customer, geographical, and product details; calculate net revenue and classify sales lines as `HIGH` or `LOW`.
2. **Net Revenue by Product Category** → Calculate total net revenue by category and compare revenue in 2022 and 2023.
3. **Median Net Revenue by Category** → Compare median sales-line revenue by product category between 2022 and 2023.
4. **Median-Based Revenue Split** → Compare revenue from sales lines below versus at or above the median threshold for each category in 2022 and 2023.
5. **Revenue Tier Segmentation** → Classify sales lines into high-, medium-, and low-revenue tiers using percentile thresholds and aggregate revenue by category.

---

## Key Results and Insights

Based on the supplied query results:

- **Computers generated the highest total net revenue**, approximately 90.62 million across the period covered by the category summary.
- **Cell phones ranked second**, generating approximately 32.62 million, followed by Home Appliances at approximately 26.61 million.
- **Revenue declined from 2022 to 2023 across all eight product categories** in the supplied comparison. Computers decreased from approximately 17.86 million to 11.65 million, while Cell phones decreased from approximately 8.12 million to 6.00 million.
- **Median sales-line revenue varied by category.** Between 2022 and 2023, the median increased for Audio, Cameras and camcorders, Home Appliances, and TV and Video. It decreased for Cell phones, Computers, Games and Toys, and Music, Movies and Audio Books.
- **Computers had the highest category median in 2022**, at approximately 809.70. In 2023, Home Appliances had the highest median, at approximately 825.25.
- **Higher-revenue sales lines contributed more total revenue in most categories** in the median-based split. Games and Toys was an exception: its lower-revenue group contributed more than its higher-revenue group in both years.
- **The high-revenue tier contributed the most revenue in most categories** in the percentile segmentation. Games and Toys and Music, Movies and Audio Books generated more revenue in the medium tier than in the high tier.

These results describe the supplied outputs. Further analysis would be needed to determine why revenue declined or why revenue distributions differ between categories.

---

## Tech Stack

- **SQL:** PostgreSQL
- **Database:** Contoso sample sales database
- **Tables:** `sales`, `customer`, and `product`
- **Analysis:** Revenue calculations, category comparisons, median analysis, and percentile-based segmentation
- **Visualization:** Query-result screenshots and charts can be added later.

---

## SQL Skills Demonstrated

- Joins and filtering
- Revenue calculations and aggregations
- `GROUP BY` and conditional logic using `CASE`
- Median calculations and percentile thresholds
- Year-over-year category comparisons
- Revenue distribution analysis
- Classification of sales lines into analytical tiers

---

## Why This Project Matters

Revenue analysis helps businesses understand which product categories contribute most to sales, how category performance changes over time, and whether revenue is concentrated among higher-value transactions.

This project demonstrates the use of SQL to:
- Analyze product-category revenue and compare performance across years
- Evaluate median sales-line revenue alongside total revenue
- Examine revenue distributions using median and percentile thresholds
- Segment sales lines to support further investigation and visualization

---

## Notes

- Revenue values are reported in the units returned by the source queries.
- The first query displays individual sales records and should not be treated as a complete summary of total sales.
- The supplied results show lower category revenue in 2023 than in 2022; they do not establish the reasons for the decline.
- The percentile labels (`1-High`, `2-Medium`, and `3-Low`) follow the supplied query output.

---
