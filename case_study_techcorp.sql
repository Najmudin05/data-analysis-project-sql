-- 1. Identify the top 3 customers based on total oder amount!

select 
c.first_name,
c.last_name,
sum(o.total_amount) total_order_amount
from customers as c 
join orders o on o.customer_id = c.customer_id
group by c.customer_id
order by total_order_amount desc
limit 3
;


-- 2. Find the average order amount for each customer!

select
c.first_name,
c.last_name,
avg(o.total_amount) average_order
from customers c
join orders o on o.customer_id = c.customer_id
group by c.customer_id
;

-- 3. Find all employees who have completed more than 4 support tickets!

select 
e.first_name,
e.last_name,
count(s.ticket_id) 
from employees e
join supporttickets s on s.employee_id = e.employee_id
where s.status = 'resolved'
group by e.employee_id
having count(s.ticket_id)>4
;


-- 4. Find all products that have never been ordered!

select 
products.product_name
from products
left join orderdetails od on od.order_id = products.product_id
where od.order_id is null
;


-- 5. Calculate the total revenue from product sales!

select 
sum(quantity*unit_price) total_revenue
from orderdetails;


-- 6. Determine the average price of products for each category and find categories with an average price of over $500!

with cte_avg_price as (
select 
category,
avg(price) rerata
from products
group by category
)
select * from cte_avg_price where rerata>500
;


-- 7. Find customers who have made at least one order totaling over $1000!

select * 
from customers
where customer_id in 
(select 
customer_id
from orders
where total_amount>1000
)
;