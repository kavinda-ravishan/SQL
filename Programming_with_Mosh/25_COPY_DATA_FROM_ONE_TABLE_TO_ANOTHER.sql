USE sql_store;
-- this mathod ignore the attributes like primary key and auto_increment
CREATE TABLE orders_archive AS
SELECT * FROM orders; -- soft quary

SELECT * FROM orders_archive;

INSERT INTO orders_archive
SELECT * FROM orders
WHERE order_date < '2019-01-01';


USE sql_invoicing;

CREATE TABLE invoices_archive AS
SELECT invoice_id, number, c.name AS client, invoice_total, payment_total, invoice_date, due_date, payment_date FROM invoices i
LEFT JOIN clients c ON i.client_id = c.client_id
WHERE payment_date IS NOT NULL;
-- or
CREATE TABLE invoices_archive AS
SELECT invoice_id, number, c.name AS client, invoice_total, payment_total, invoice_date, due_date, payment_date FROM invoices i
JOIN clients c USING (client_id)
WHERE payment_date IS NOT NULL;

SELECT * FROM invoices_archive;