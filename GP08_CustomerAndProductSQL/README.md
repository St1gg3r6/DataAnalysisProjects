# Revenue, Inventory & Customer Profitability Analysis (SQL)

## Business Context

A retail distribution business required deeper visibility into product performance, customer profitability, and inventory efficiency to support commercial decision-making. Using a relational sales database, this project applies SQL to analyse revenue drivers, inventory dynamics, and customer value.

⸻

## Database Overview

The database includes:

* customers
* orders
* orderdetails
* products
* productlines
* payments
* employees
* offices

Structured relational joins were used to analyse transactional and financial performance.

⸻

## Analytical Objectives

1️⃣ Inventory Optimisation
* Identify high- and low-performing products
* Compare stock levels against sales volume
* Highlight potential overstock or understock risks

2️⃣ Customer Profitability Analysis
* Calculate total revenue and profit by customer
* Identify top-performing and low-value customers
* Assess revenue concentration risk

3️⃣ Revenue & Acquisition Economics
* Calculate average profit per customer
* Evaluate profitability distribution
* Support informed customer acquisition spending

⸻

## SQL Techniques Applied
* Multi-table joins across transactional schema
* Aggregation and grouping
* Revenue and profit calculation
* Subqueries and Common Table Expressions (CTEs)
* Window functions for ranking customers and products
* Conditional logic for performance classification

## Example Query (Customer Revenue Ranking)
```
WITH customer_profit AS (
    SELECT 
        c.customerName,
        SUM(od.quantityOrdered * od.priceEach) AS total_revenue
    FROM customers c
    JOIN orders o ON c.customerNumber = o.customerNumber
    JOIN orderdetails od ON o.orderNumber = od.orderNumber
    GROUP BY c.customerName
)
SELECT 
    customerName,
    total_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM customer_profit;
```

## Key Insights
* A small proportion of customers contributed a disproportionate share of total revenue
* Several products showed low turnover relative to inventory levels
* Revenue concentration suggests both opportunity and risk in customer portfolio structure

⸻

## Commercial Implications
* High-value customers warrant retention and account management focus
* Inventory purchasing decisions should prioritise fast-moving product lines
* Customer acquisition spend should be benchmarked against average lifetime profitability

⸻

## Tools

SQL | Relational Database Analysis | Revenue Aggregation | Window Functions | Inventory Performance Analysis