create database techcorp;
show databases;
use techcorp;
show tables from techcorp;

create table products (
	product_id int auto_increment primary key,
    product_name varchar(100) not null,
    category varchar(50),
    price decimal(10,2),
    stock_quantity int
);
select * from products;

create table customers (
	customer_id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique,
    phone varchar(20),
    address varchar(200)
);
select * from customers;

create table orders (
	order_id int auto_increment primary key,
    customer_id int,
    order_date date,
    total_amount decimal(10,2),
    foreign key (customer_id) references customers(customer_id)
);
select * from orders;

create table orderdetails (
order_detail_id int auto_increment primary key,
order_id int,
product_id int,
quantity int,
unit_price decimal(10,2),
foreign key (order_id) references orders(order_id),
foreign key (product_id) references products(product_id)
);
select * from orderdetails;

create table employees (
	employee_id int auto_increment primary key,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    email varchar(100) unique,
    phone varchar(20),
    hire_date date,
    department varchar(500)
);
select * from employees;

create table supporttickets (
	ticket_id int auto_increment primary key,
    customer_id int,
    employee_id int,
    issue text,
    status varchar(20),
    created_at datetime,
    resolved_at datetime,
    foreign key (customer_id) references customers(customer_id),
    foreign key (employee_id) references employees(employee_id)
);
select * from supporttickets;

select * from products;
alter table products add column discount decimal(5,2) default 0;
