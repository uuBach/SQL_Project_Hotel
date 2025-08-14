-- Есть ли связь между количеством ночей и средней ценой (adr) — например, дороже ли длительные бронирования?

SELECT
stays_in_weekend_nights + stays_in_week_nights AS total_nights,
AVG(adr) AS avg_adr
FROM bookings
GROUP BY
total_nights
ORDER BY
avg_adr DESC