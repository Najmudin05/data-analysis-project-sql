INSERT INTO products (product_name, category, price, stock_quantity, discount)
VALUES 
('Laptop', 'Electronics', 1000.00, 50, 5.00),
('Smartphone', 'Electronics', 800.00, 120, 10.00),
('Headphones', 'Accessories', 150.00, 200, 15.00),
('Tablet', 'Electronics', 600.00, 80, 7.50),
('Smartwatch', 'Accessories', 300.00, 60, 0),
('Keyboard', 'Accessories', 50.00, 150, 0),
('Mouse', 'Accessories', 30.00, 300, 0),
('Monitor', 'Electronics', 200.00, 40, 10.00),
('Printer', 'Electronics', 250.00, 20, 0),
('USB Drive', 'Accessories', 20.00, 500, 0);
select * from products;

INSERT INTO customers (first_name, last_name, email, phone, address)
VALUES 
('John', 'Doe', 'john.doe@example.com', '123456789', '123 Elm St'),
('Jane', 'Smith', 'jane.smith@example.com', '987654321', '456 Oak St'),
('David', 'Johnson', 'david.j@example.com', '111222333', '789 Pine St'),
('Emily', 'Davis', 'emily.davis@example.com', '444555666', '321 Maple St'),
('Michael', 'Wilson', 'michael.wilson@example.com', '777888999', '654 Cedar St'),
('Sarah', 'Brown', 'sarah.brown@example.com', '555444333', '852 Birch St'),
('James', 'Taylor', 'james.taylor@example.com', '999888777', '963 Spruce St'),
('Linda', 'Anderson', 'linda.anderson@example.com', '333222111', '147 Fir St'),
('Robert', 'Thomas', 'robert.thomas@example.com', '888777666', '258 Redwood St'),
('Laura', 'Moore', 'laura.moore@example.com', '666555444', '369 Palm St');
select * from customers;

INSERT INTO orders (customer_id, order_date, total_amount)
VALUES 
(1, '2024-01-10', 1500.00),
(2, '2024-01-12', 850.00),
(3, '2024-01-15', 300.00),
(4, '2024-01-18', 175.00),
(5, '2024-01-20', 950.00),
(6, '2024-01-22', 600.00),
(7, '2024-01-25', 2000.00),
(8, '2024-01-28', 350.00),
(9, '2024-01-30', 1200.00),
(10, '2024-02-01', 500.00);
select * from orders;

INSERT INTO orderdetails (order_id, product_id, quantity, unit_price)
VALUES 
(1, 1, 1, 1000.00),
(1, 2, 1, 800.00),
(2, 3, 2, 150.00),
(3, 4, 1, 600.00),
(4, 5, 1, 300.00),
(5, 6, 2, 50.00),
(6, 7, 3, 30.00),
(7, 8, 2, 200.00),
(8, 9, 1, 250.00),
(9, 10, 5, 20.00);
select * from orderdetails;

INSERT INTO employees (first_name, last_name, email, phone, hire_date, department)
VALUES 
('Alice', 'Walker', 'alice.walker@example.com', '111222333', '2023-05-10', 'Support'),
('Brian', 'Carter', 'brian.carter@example.com', '222333444', '2023-06-15', 'Sales'),
('Clara', 'Evans', 'clara.evans@example.com', '333444555', '2023-07-20', 'Marketing'),
('Daniel', 'Baker', 'daniel.baker@example.com', '444555666', '2023-08-25', 'Development'),
('Elena', 'Green', 'elena.green@example.com', '555666777', '2023-09-30', 'Support'),
('Frank', 'Hall', 'frank.hall@example.com', '666777888', '2023-10-05', 'Development'),
('Grace', 'Miller', 'grace.miller@example.com', '777888999', '2023-11-10', 'HR'),
('Henry', 'Adams', 'henry.adams@example.com', '888999111', '2023-12-15', 'Sales'),
('Ivy', 'Turner', 'ivy.turner@example.com', '999111222', '2024-01-01', 'Support'),
('Jack', 'Clark', 'jack.clark@example.com', '111333444', '2024-01-10', 'Development');
select * from employees;

INSERT INTO SupportTickets (customer_id, employee_id, issue, status, created_at, resolved_at)
VALUES
(1, 1, 'Cannot connect to Wi-Fi', 'resolved', '2023-07-01 10:00:00', '2023-07-01 11:00:00'),
(2, 1, 'Screen flickering', 'resolved', '2023-07-02 12:00:00', '2023-07-02 13:00:00'),
(3, 1, 'Battery drains quickly', 'open', '2023-07-03 14:00:00', NULL),
(4, 2, 'Late delivery', 'resolved', '2023-07-04 15:00:00', '2023-07-04 16:00:00'),
(5, 2, 'Damaged product', 'open', '2023-07-05 17:00:00', NULL),
(1, 3, 'Software issue', 'resolved', '2023-07-06 18:00:00', '2023-07-06 19:00:00'),
(2, 3, 'Bluetooth connectivity issue', 'resolved', '2023-07-07 20:00:00', '2023-07-07 21:00:00'),
(5, 4, 'Account issue', 'open', '2023-07-08 22:00:00', NULL),
(3, 4, 'Payment issue', 'resolved', '2023-07-09 23:00:00', '2023-07-09 23:30:00'),
(4, 5, 'Physical damage', 'open', '2023-07-10 08:00:00', NULL),
(4, 1, 'Laptop blue screen', 'resolved', '2024-01-05 10:00:00', '2024-02-05 12:00:00'),
(5, 1, 'Laptop lagging', 'resolved', '2024-01-06 10:00:00', '2024-01-25 12:00:00'),
(3, 1, 'Some part of laptop broken', 'resolved', '2024-02-05 10:00:00', '2024-03-05 12:00:00');
select * from supporttickets;






-- delete all data on table -> TRUNCATE TABLE supporttickets;

