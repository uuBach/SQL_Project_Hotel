-- Query: Average Daily Rate by Country
-- Description: This query calculates the average daily rate (ADR) for bookings, grouped by each customer’s country code, and orders the results from highest to lowest ADR.

SELECT
customers.country_code,
AVG(bookings.adr) AS avg_adr
FROM bookings
INNER JOIN customers ON customers.customer_id = bookings.customer_id
GROUP BY
customers.country_code
ORDER BY
avg_adr DESC  