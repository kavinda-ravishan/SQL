USE sql_store;

SELECT o.order_id, o.order_date, c.first_name, c.last_name, os.name AS status FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
JOIN order_statuses os ON o.status = os.order_status_id
ORDER BY o.order_id;

SELECT p.date, p.invoice_id ,c.name, p.amount ,pm.name AS 'Payment method' FROM sql_invoicing.payments p
JOIN sql_invoicing.clients c ON c.client_id = p.client_id
JOIN sql_invoicing.payment_methods pm ON pm.payment_method_id = p.payment_method;