--creating my database tables according to my star schema

--create table dim Location
create table dim_location (
	location_id int primary key,
	continent varchar(50),
	country varchar(100),
	city varchar(50)
);

--create table dim payment
create table dim_payment (
	payment_id int primary key,
	payment_method varchar(50)
);

--create table dim product
create table dim_product (
	product_id int primary key,
	SKU varchar(50),
	product_name varchar(100),
	brand varchar(50),
	category varchar(50),
	subcategory varchar(50)
);

--create table dim store
create table dim_store (
	store_id int primary key,
	store_name varchar(100),
	store_type varchar(50)
);

-- create table dim priority
create table dim_priority (
	priority_id int primary key,
	priority varchar(50)
);

--create table dim promotion
create table dim_promotion (
	promotion_id int primary key,
	promotion_name varchar(50)
);

--create table dim salesperson
create table dim_salesperson (
	salesperson_id int primary key,
	sales_department varchar(50)
);

--create table dim order
create table dim_order (
	order_id int primary key
);

--create table dim channel
create table dim_channel (
	channel_id int primary key, 
	channel varchar(50)
);

--create table dim customer
create table dim_customer (
	customer_id int primary key,
	customer_segment varchar(50),
	loyalty_tier varchar(100)
);

--create table dim date (*check renaming code below*)
create table date (
	date_id int primary key,
	purchase_date date,
	shipping_date date,
	return_date date
);

--I had to rename my date table to dim_date
--ALTER TABLE date RENAME TO dim_date;

--create table fact
create table retail_fact (
	retail_id int primary key,
	location_id int,
	payment_id int,
	product_id int,
	store_id int,
	priority_id int,
	promotion_id int,
	sales_person_id int,
	order_id int,
	channel_id int,
	customer_id int,
	dates_id int,
	quantity int,
	unit_cost int,
	discount_amount int,
	tax_amount int,
	shipping_cost int,
	gross_sales int,
	net_sales int,
	cogs int,
	gross_profit int
);