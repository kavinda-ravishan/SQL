USE sql_store;

SELECT o.order_id, c.first_name FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
-- or
SELECT o.order_id, c.first_name FROM orders o
JOIN customers c USING (customer_id);

SELECT o.order_id, c.first_name, s.name AS shipper FROM orders o
JOIN customers c USING (customer_id)
JOIN shippers s USING (shipper_id);


SELECT * FROM order_items oi
JOIN order_item_notes oin 
	ON oi.order_Id = oin.order_Id
    AND oi.product_id = oin.product_id;
-- or
SELECT * FROM order_items oi
JOIN order_item_notes oin USING (order_Id, product_id);


SELECT p.date, c.name, p.amount, pm.name FROM sql_invoicing.payments p
JOIN sql_invoicing.clients c ON c.client_id = p.client_id
JOIN sql_invoicing.payment_methods pm ON p.payment_method = pm.payment_method_id;
-- or
SELECT p.date, c.name, p.amount, pm.name FROM sql_invoicing.payments p
JOIN sql_invoicing.clients c USING (client_id)
JOIN sql_invoicing.payment_methods pm ON p.payment_method = pm.payment_method_id;