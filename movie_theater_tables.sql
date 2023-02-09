create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	address VARCHAR(150),
	payment_info VARCHAR(100)
);

create table inventory(
	product_id SERIAL primary key,
	amount NUMERIC(5)
);

create table movie(
	movie_id SERIAL primary key,
	movie_title VARCHAR(100),
	rating VARCHAR(5),
	tickets_sold numeric(15)
);

create table tickets(
	ticket_id SERIAL primary key,
	price NUMERIC(3,2),
	customer_id integer not null,
	movie_id integer not null,
	foreign key(customer_id) references customer(customer_id),
	foreign key(movie_id) references movie(movie_id)
);

create table snack_order(
	order_id SERIAL primary key,
	customer_id integer not null,
	product_id integer not null,
	amount NUMERIC(6),
	subtotal NUMERIC(3,2),
	total_cost NUMERIC(5,2),
	foreign key(customer_id) references customer(customer_id),
	foreign key(product_id) references inventory(product_id)
);