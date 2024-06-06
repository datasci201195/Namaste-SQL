create table amazon_orders
(
order_id integer,
order_date date,
product_name varchar(100),
total_price decimal(6,2),
payment_method varchar(20)
);

insert into amazon_orders values(1,'2022-10-01','Baby Milk',30.5,'UPI');
insert into amazon_orders values(2,'2022-10-02','Baby Powder',130,'Credit Card');
insert into amazon_orders values(3,'2022-10-01','Baby cream',30.5,'UPI');
insert into amazon_orders values(4,'2022-10-02','Baby soap',130,'Credit Card');

SELECT * FROM amazon_orders;