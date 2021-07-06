USE sql_store;

INSERT INTO shippers (name)
VALUES 
	('shipper1'),
	('shipper2'),
    ('shipper3');

SELECT * FROM shippers;

INSERT INTO products (name, quantity_in_stock, unit_price)
VALUES 
	('item1', 1, 1.1),
    ('item2', 2, 2.2),
    ('item3', 3, 3.3);

-- or

INSERT INTO products
VALUES 
	(DEFAULT, 'item1', 1, 1.1),
    (DEFAULT, 'item2', 2, 2.2),
    (DEFAULT, 'item3', 3, 3.3);
    
SELECT * FROM products;