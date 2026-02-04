-- PostgreSQL JSON & JSONB examples
-- Commonly used in modern backend applications

-- Sample table with JSONB column
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_info JSONB,
    order_details JSONB
);

-- Insert sample data
INSERT INTO orders (customer_info, order_details) VALUES
(
    '{"name": "John", "email": "john@gmail.com", "city": "Chennai"}',
    '{"product": "Laptop", "price": 75000, "quantity": 1}'
),
(
    '{"name": "Anu", "email": "anu@gmail.com", "city": "Bangalore"}',
    '{"product": "Mobile", "price": 25000, "quantity": 2}'
);

-- 1. Access JSON values
SELECT
    customer_info->>'name' AS customer_name,
    customer_info->>'city' AS city
FROM orders;

-- 2. Filter using JSON values
SELECT *
FROM orders
WHERE customer_info->>'city' = 'Chennai';

-- 3. JSON containment operator
SELECT *
FROM orders
WHERE order_details @> '{"product": "Laptop"}';

-- 4. Update JSONB value
UPDATE orders
SET customer_info = jsonb_set(customer_info, '{city}', '"Hyderabad"')
WHERE order_id = 1;

-- 5. Create index on JSONB column for performance
CREATE INDEX idx_orders_customer_info
ON orders USING GIN (customer_info);

-- 6. EXPLAIN ANALYZE with JSON index
EXPLAIN ANALYZE
SELECT *
FROM orders
WHERE customer_info @> '{"city": "Hyderabad"}';

-- Notes:
-- JSONB is faster and recommended over JSON
-- GIN index improves JSON search performance
