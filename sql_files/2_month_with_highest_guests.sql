-- Query: Month with the Highest Number of Guests
-- Description: This query calculates the total number of people (adults, children, and babies) for each month and returns the months ordered by total guests in descending order.

SELECT
SUM(adults + children + babies) AS total_people,
arrival_date_month
FROM bookings
GROUP BY
arrival_date_month
ORDER BY
total_people DESC