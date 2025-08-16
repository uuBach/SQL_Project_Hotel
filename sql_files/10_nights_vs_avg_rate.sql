-- Query: Relationship Between Number of Nights and Average Daily Rate
-- Description: This query examines whether longer stays are more expensive by calculating the average daily rate (ADR) for each total number of nights (weekend + week nights) and ordering the results by ADR in descending order.

SELECT
stays_in_weekend_nights + stays_in_week_nights AS total_nights,
AVG(adr) AS avg_adr
FROM bookings
GROUP BY
total_nights
ORDER BY
avg_adr DESC