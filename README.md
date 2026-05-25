# Retail Sales Analysis using SQL
## Project Overview
This project analyses retail sales data using MySQL workbench and SQL queries.
The goal of this project is to generate business insights from retail sales transactions.

## Tools USed
- MySQL Workbench
- SQL
- CSV Dataset

## SQL Concepts Used
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- LIMIT
- SUM()
- AVG()
- COUNT()

## Business Questions Solved
- Top customer by sales
- Top state by profit
- Top cities by sales
- Top Product by sales
- Loss-making orders
- High-profit customers

## Key Insights
- California generated highest profits
- Some orders generated losses despite high sales
- Technology products had strong sales perfromance
- Certain cities contributed significantly to total revenue

## Sample SQL Query
```sql
SELECT state,
       SUM(profit) AS total_profit
FROM orders
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10;
```

## Project Outcome
This project improved my SQL querying, aggregation, filtering and business analysis skills

## Dataset
Retail sales dataset used for SQL business analysis project.
[Download Dataset](Sample%20-%20Superstore.csv)

### Dataset Columns
- Order ID
- Customer Name
- Sales
- Profit
- State
- City
- Product Name
- Category
- Quantity
- Discount
