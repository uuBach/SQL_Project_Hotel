SELECT
customers.country_code,
AVG(bookings.adr) AS avg_adr
FROM bookings
INNER JOIN customers ON customers.customer_id = bookings.customer_id
GROUP BY
customers.country_code
ORDER BY
avg_adr DESC  