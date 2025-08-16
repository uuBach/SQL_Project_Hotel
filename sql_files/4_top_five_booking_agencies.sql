-- Query: Top 5 Booking Agencies by Number of Reservations
-- Description: This query finds the five booking agencies that made the highest number of reservations by counting bookings associated with each agency and ordering them in descending order.

SELECT
customers.booking_agent_id,
COUNT(*) AS total_number
FROM customers
LEFT JOIN bookings ON customers.customer_id = bookings.customer_id
WHERE customers.booking_agent_id IS NOT NULL
GROUP BY
customers.booking_agent_id
ORDER BY
total_number DESC
LIMIT 5

