-- В каком месяце в отеле было больше всего гостей?

SELECT
SUM(adults + children + babies) AS total_people,
arrival_date_month
FROM bookings
GROUP BY
arrival_date_month
ORDER BY
total_people DESC