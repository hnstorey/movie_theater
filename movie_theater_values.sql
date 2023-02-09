insert into customer(
	customer_id,
	first_name,
	last_name,
	email,
	address,
	payment_info 
) values(
	1,
	'Mary',
	'Poppins',
	'practically_perfect@everyway.co.uk',
	'17 Cherry Tree Ln, London, England 100',
	'1122-2233-3344-4455 678 09/10'
);

insert into inventory(
	product_id,
	amount,
	product_name
) values(
	1,
	32000,
	'popcorn'
);

insert into movie (
	movie_id,
	movie_title,
	rating,
	tickets_sold
) values (
	1,
	'Mary Poppins',
	'G',
	1
);

insert into snack_order (
	order_id,
	customer_id,
	product_id,
	amount,
	subtotal,
	total_cost
) values (
	1,
	1,
	1,
	1,
	7.00,
	8.50
);

insert into tickets (
	ticket_id,
	price,
	customer_id,
	movie_id
) values(
	1,
	8.00,
	1,
	1
);

select * from customer;

select * from inventory;

select * from movie;

select * from snack_order;

select * from tickets;

insert into tickets (
	ticket_id,
	price,
	customer_id,
	movie_id
) values(
	3,
	15.50,
	1,
	1
);
