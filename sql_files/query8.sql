-- Какое среднее время ожидания (days_in_waiting_list) у гостей из топ-3 стран по количеству бронирований?

WITH top_three_countries AS( SELECT
country_code,
COUNT(*) AS total_number
FROM
customers
GROUP BY
country_code
ORDER BY
total_number DESC
LIMIT 3)

SELECT
top_three_countries.country_code,
AVG(bookings.days_in_waiting_list)
FROM bookings
JOIN customers 
ON customers.customer_id = bookings.customer_id
JOIN top_three_countries ON
customers.country_code = top_three_countries.country_code
GROUP BY
top_three_countries.country_code


