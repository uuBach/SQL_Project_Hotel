-- Query: Month with the Highest Average Daily Rate
-- Description: This query calculates the average daily rate (ADR) for each month and returns the month with the highest average ADR, indicating the most expensive month for accommodation.

SELECT
arrival_date_month,
AVG(adr) AS avg_adr
FROM bookings
GROUP BY
arrival_date_month
ORDER BY
avg_adr DESC
LIMIT 1