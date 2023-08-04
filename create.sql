create database Shop;
use Shop;
show tables;

create table customers(
customers_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50),
address varchar(50)
);

create table items(
item_id int primary key,
item_name varchar(50) not null,
item_price decimal(10, 2) default 0.00,
quantity int,
order_id int
);

create table orders(
order_id int primary key,
order_status varchar(50),
order_type varchar(50),
ORDER_PRICE decimal(10, 2) default 0.00,
customers_id int
);


insert into customers (customers_id, first_name, last_name, email, address) values(1, 'Aibek', 'Nazaraliev', 'aibekskeks@gmail.com', 'gogolya 23');
insert into customers (customers_id, first_name, last_name, email, address) values(2, 'Nurik', 'Maganov', 'kakpap@gmail.com', 'motrosova 23');
insert into customers (customers_id, first_name, last_name, email, address) values(3, 'Beks', 'Satyev', 'asdkjf23@gmail.com', 'hudaibergenova 93a');
insert into customers (customers_id, first_name, last_name, email, address) values(4, 'Ermek', 'Balanov', 'kekovic222h@gmail.com', 'dushanbinka 24');
insert into customers (customers_id, first_name, last_name, email, address) values(5, 'Niyaz', 'Bakranov', 'oooasdyy5@gmail.com', 'gersena 89');
insert into customers (customers_id, first_name, last_name, email, address) values(6, 'Nikita', 'Baranovsky', 'oSDyy533@gmail.com', 'jumagulova 18');


insert into orders (order_id, order_status, order_type, ORDER_PRICE, customers_id) values(1, 'delivered', 'delivery', 100,  4);
insert into orders (order_id, order_status, order_type, ORDER_PRICE, customers_id) values(2, 'in progress', 'delivery', 120,  2);
insert into orders (order_id, order_status, order_type, ORDER_PRICE, customers_id) values(3, 'in progress', 'pick up', 99,  5);
insert into orders (order_id, order_status, order_type, ORDER_PRICE, customers_id) values(4, 'delivered', 'delivery', 17,  1);
insert into orders (order_id, order_status, order_type, ORDER_PRICE, customers_id) values(5, 'picked uo', 'pick up', 189,  3);

insert into items (item_id, item_name, item_price, quantity, order_id) values (1, 'phone', 189, 1, 5);
insert into items (item_id, item_name, item_price, quantity, order_id) values (2, 'tv', 120, 1, 2);
insert into items (item_id, item_name, item_price, quantity, order_id) values (3, 'watch', 99, 1, 3);
insert into items (item_id, item_name, item_price, quantity, order_id) values (4, 'phone case', 9.5, 2, 4);
insert into items (item_id, item_name, item_price, quantity, order_id) values (5, 'charger', 50, 2, 1);

