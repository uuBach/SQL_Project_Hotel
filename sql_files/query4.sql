-- Какие 5 агентств сделали больше всего бронирований?

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


