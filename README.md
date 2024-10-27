# SQL Project: Techcorp Analysis

## Exploratory Data Analysis (EDA)
---

### 1. Identify the Top 3 Customers Based on Total Order Amount
- **Description**: Retrieved the top 3 customers with the highest total order amount, giving insights into the highest-spending customers.
- **Query**:
  ```sql
  SELECT 
      c.first_name,
      c.last_name,
      SUM(o.total_amount) AS total_order_amount
  FROM 
      customers AS c
  JOIN 
      orders o ON o.customer_id = c.customer_id
  GROUP BY 
      c.customer_id
  ORDER BY 
      total_order_amount DESC
  LIMIT 3;
---

### 2. Calculate Average Order Amount for Each Customer
- **Description**: Calculated the average order amount for each customer, providing insight into individual purchasing behavior.
- **Query**:
  ```sql
  SELECT
      c.first_name,
      c.last_name,
      AVG(o.total_amount) AS average_order
  FROM 
      customers c
  JOIN 
      orders o ON o.customer_id = c.customer_id
  GROUP BY 
      c.customer_id;
---

### 3. Identify Employees Who Completed More Than 4 Support Tickets
- **Description**: Identified employees who have resolved more than four support tickets, useful for performance tracking.
- **Query**:
  ```sql
  SELECT 
      e.first_name,
      e.last_name,
      COUNT(s.ticket_id) AS resolved_tickets
  FROM 
      employees e
  JOIN 
      supporttickets s ON s.employee_id = e.employee_id
  WHERE 
      s.status = 'resolved'
  GROUP BY 
      e.employee_id
  HAVING 
      COUNT(s.ticket_id) > 4;
---

### 4. Identify Products That Have Never Been Ordered
- **Description**: Listed products that have never been ordered, highlighting potential inventory or marketing opportunities.
- **Query**:
  ```sql
  SELECT 
      products.product_name
  FROM 
      products
  LEFT JOIN 
      orderdetails od ON od.order_id = products.product_id
  WHERE 
      od.order_id IS NULL;
---

### 5. Calculate Total Revenue from Product Sales
- **Description**: Calculated the total revenue from all product sales to assess overall business performance.
- **Query**:
  ```sql
  SELECT 
      SUM(quantity * unit_price) AS total_revenue
  FROM 
      orderdetails;
---

### 6. Determine Categories with an Average Price Over $500
- **Description**: Calculated the average product price per category and filtered categories with an average price above $500, offering insight into premium product categories.
- **Query**:
  ```sql
  WITH cte_avg_price AS (
      SELECT 
          category,
          AVG(price) AS avg_price
      FROM 
          products
      GROUP BY 
          category
  )
  SELECT 
      * 
  FROM 
      cte_avg_price 
  WHERE 
      avg_price > 500;
---

### 7. Find Customers with Orders Over $1000
- **Description**: Retrieved customers with at least one order totaling more than $1000, useful for identifying high-value clients.
- **Query**:
  ```sql
  SELECT 
      * 
  FROM 
      customers
  WHERE 
      customer_id IN (
          SELECT 
              customer_id
          FROM 
              orders
          WHERE 
              total_amount > 1000
      );

## Summary
This SQL portfolio showcases skills in complex data analysis, customer and product segmentation, revenue calculation, and employee performance analysis. These queries illustrate my ability to extract valuable business insights using SQL, tailored to support data-driven decision-making in customer, product, and employee management.

### Skills Highlighted:
* Data aggregation, filtering, and grouping techniques.
* Usage of Common Table Expressions (CTE).
* Knowledge of joins, subqueries, and filtering criteria.
