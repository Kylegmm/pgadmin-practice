--2. The family moves, change their address using an UPDATE statement.
INSERT INTO address (
    address, 
    address2, 
    district, 
    city_id, 
    postal_code, 
    phone
) VALUES (
    '456 New Family St', 
    '', 
    'New District', 
    1, 
    '67890', 
    '098-765-4321'
);
UPDATE customer 
SET address_id = (
    SELECT address_id 
    FROM address 
    WHERE address = '456 New Family St'
) 
WHERE last_name = 'Smith';
