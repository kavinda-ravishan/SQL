USE sql_invoicing;

-- DELETE FROM invoices; -- delete all rows

DELETE FROM invoices
WHERE invoice_id = 1;

SELECT * FROM invoices;

DELETE FROM invoices
WHERE client_id = (
	SELECT client_id FROM clients
	WHERE name = 'Myworks'
);

SELECT * FROM clients
WHERE name = 'Myworks';