CREATE TABLE items (
	item_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    item_type_id INT(11) NOT NULL
);

CREATE TABLE item_types(
	item_type_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE customers (
	customer_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    birthday DATE,
    city_id INT (11) NOT NULL
);

CREATE TABLE cities(
	city_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE order_items(
	order_id INT(11) NOT NULL,
    item_id INT(11) NOT NULL
);

CREATE TABLE orders(
	order_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    customer_id INT(11) NOT NULL
);

ALTER TABLE items
ADD CONSTRAINT fk
    FOREIGN KEY (item_type_id)
    REFERENCES item_types(item_type_id);

ALTER TABLE customers
ADD CONSTRAINT fk_cities
    FOREIGN KEY (city_id)
    REFERENCES cities(city_id);

ALTER TABLE orders
ADD CONSTRAINT fk_customers
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id);

ALTER TABLE order_items
ADD CONSTRAINT pk_orders_items
    PRIMARY KEY (order_id, item_id),
ADD CONSTRAINT fk_orders
	FOREIGN KEY (order_id)
    REFERENCES orders(order_id),
ADD CONSTRAINT fk_items
	FOREIGN KEY (item_id)
    REFERENCES items(item_id);
    

