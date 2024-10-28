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

- **Result analysis**:
James Taylor leads with the highest total orders at $2000, followed by John Doe with $1500, which is approximately 25% lower. Robert Thomas is in third place with $1200. The $800 difference between Taylor and Thomas indicates a significant gap in spending behavior among the top customers. 
- **Recomendations**:
The company can develop strategies to retain high-value customers and encourage increased purchases in the future. 

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

- **Result analysis**:
James Taylor has the highest average order of $2000, followed by John Doe at $1500 and Robert Thomas at $1200. In contrast, Emily Davis and Linda Anderson have the lowest averages, at $175 and $350 respectively, indicating a tendency to shop in smaller amounts.
- **Recomendations**:
The company can target customers with low average orders through upselling or promotions, while maintaining the loyalty of high-value customers.

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

- **Result analysis**:
Alice Walker is the only employee who has completed more than 4 support tickets, having resolved a total of 5 tickets. 
- **Recomendations**:
Alice Walker demonstrates strong performance in handling support tickets and is deserving of consideration for an award or a role in training her colleagues. 

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

- **Result analysis**:
The USB Drive is the only item that has never been ordered.
- **Recomendations**:
The company may consider marketing or promotional strategies to boost sales of this product, given that no demand has been recorded yet.

---

### 5. Calculate Total Revenue from Product Sales
- **Description**: Calculated the total revenue from all product sales to assess overall business performance.
- **Query**:
  ```sql
  SELECT 
      SUM(quantity * unit_price) AS total_revenue
  FROM 
      orderdetails;

- **Result analysis**:
The total revenue from product sales amounts to $3940.00.
- **Recomendations**:
This revenue reflects the overall sales performance and can be used to evaluate the company's financial performance. 

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

- **Result analysis**:
The Electronics category has an average product price of $570.00, exceeding $500.
- **Recomendations**:
The Electronics category shows a high average value, making it a potential focus for further marketing and sales strategies. 

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

- **Result analysis**:
Customers who have placed at least one order with a total above $1000 are John Doe, James Taylor, and Robert Thomas. 
- **Recomendations**:
These three customers are high-value clients, so the company may consider marketing strategies or loyalty programs to enhance their retention. 

---

## Summary

Through the analysis of customer spending behavior, employee support ticket performance, product inventory, and revenue calculations, several insights have been gathered to inform strategic decisions:

1. **Customer Segmentation**: High-spending customers, such as James Taylor, John Doe, and Robert Thomas, were identified. Retention strategies and personalized marketing campaigns can be implemented for these clients, while customers with lower average orders may benefit from upselling and promotional efforts.

2. **Employee Performance**: Alice Walker stands out for her high performance in resolving support tickets, presenting an opportunity for potential recognition or involvement in training programs to improve team performance.

3. **Product and Inventory Management**: The identification of unpurchased products, such as the USB Drive, suggests an opportunity for targeted marketing to clear inventory and boost product demand.

4. **Revenue and Financial Health**: With a calculated total revenue of $3940.00, financial performance is assessed, providing a baseline for future revenue goals and financial planning.

5. **Premium Product Categories**: The Electronics category, with an average price over $500, highlights a segment for premium product marketing, which may align with the preferences of high-value customers.

6. **High-Value Clients**: Customers with large orders, particularly those exceeding $1000, present opportunities for loyalty programs or exclusive offers to maintain engagement and loyalty.

### Skills Highlighted:
* Data aggregation, filtering, and grouping techniques.
* Proficiency in Common Table Expressions (CTE) and subqueries.
* Expertise in joins and conditional filtering to drive business insights.
  
This project showcases a comprehensive approach to SQL-based data analysis, delivering actionable insights for enhanced decision-making and strategic development.

