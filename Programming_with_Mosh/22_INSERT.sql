USE sql_store;

INSERT INTO customers
VALUES (
	DEFAULT, -- customer_id
    'John', -- first name
    'Smith', -- last name
    '1990-01-01', -- birth date, (or NULL or DEFAULT)
    NULL, -- phone
    'address',
    'city',
    'CA',
    DEFAULT -- points 0 is the DEFAULT value
);
-- or
INSERT INTO customers (
	last_name,
	first_name,
    birth_date,
    address,
    city,
    state
)
VALUES (
	'Smith', -- last name
    'John', -- first name
    '1990-01-01', -- birth date, (or NULL or DEFAULT)
    'address',
    'city',
    'CA'
);