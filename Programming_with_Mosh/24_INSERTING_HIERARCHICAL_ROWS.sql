USE sql_store;

INSERT INTO orders (customer_id, order_date, status)
VALUES (1, '2019-01-02', 1);

INSERT INTO order_items
VALUES
( -- order item 1
	last_insert_id(), -- get the order_id of last inserted record
    1, -- product_id
    1, -- quantity
    2.95 -- unit_price
),
( -- order item 2
	last_insert_id(), -- get the order_id of last inserted record
    2,
    1,
    3.95
);