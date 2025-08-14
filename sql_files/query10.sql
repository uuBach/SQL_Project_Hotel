-- В каком месяце чаще всего делают спецзапросы

SELECT
arrival_date_month,
SUM(total_of_special_requests) AS total_requests
FROM bookings
GROUP BY
arrival_date_month
ORDER BY
total_requests DESC
LIMIT 1