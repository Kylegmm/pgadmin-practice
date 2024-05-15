--1. Add  a family of new customers to the dvdrental database.
INSERT INTO address (
    address, 
    address2, 
    district, 
    city_id, 
    postal_code, 
    phone
) VALUES (
    '123 Family St', 
    '', 
    'Family District', 
    1, 
    '12345', 
    '123-456-7890'
);
INSERT INTO customer (
    store_id, 
    first_name, 
    last_name, 
    email, 
    address_id, 
    active, 
    create_date
) 
SELECT 
    1, 
    'John', 
    'Smith', 
    'john.smith@example.com', 
    address_id, 
    1, 
    NOW()
FROM 
    address
WHERE 
    address = '123 Family St';

INSERT INTO customer (
    store_id, 
    first_name, 
    last_name, 
    email, 
    address_id, 
    active, 
    create_date
) 
SELECT 
    1, 
    'Jane', 
    'Smith', 
    'jane.smith@example.com', 
    address_id, 
    1, 
    NOW()
FROM 
    address
WHERE 
    address = '123 Family St';

INSERT INTO customer (
    store_id, 
    first_name, 
    last_name, 
    email, 
    address_id, 
    active, 
    create_date
) 
SELECT 
    1, 
    'Alice', 
    'Smith', 
    'alice.smith@example.com', 
    address_id, 
    1, 
    NOW()
FROM 
    address
WHERE 
    address = '123 Family St';

INSERT INTO customer (
    store_id, 
    first_name, 
    last_name, 
    email, 
    address_id, 
    active, 
    create_date
) 
SELECT 
    1, 
    'Bob', 
    'Smith', 
    'bob.smith@example.com', 
    address_id, 
    1, 
    NOW()
FROM 
    address
WHERE 
    address = '123 Family St';
