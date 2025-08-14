-- Какой месяц в среднем самый дорогой для проживания?

SELECT
arrival_date_month,
AVG(adr) AS avg_adr
FROM bookings
GROUP BY
arrival_date_month
ORDER BY
avg_adr DESC
LIMIT 1