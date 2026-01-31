-- Purpose: Find vendors who have at least one customer
-- Tip: EXISTS stops once a match is found (better for large datasets)

SELECT v.vendorname, v.vendoradr
FROM vendor v
WHERE EXISTS (
    SELECT 1
    FROM customer c
    WHERE c.vendorid = v.vendorid
);
