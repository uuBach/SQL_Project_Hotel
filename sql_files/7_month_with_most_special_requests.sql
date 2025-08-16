-- Query: Month with the Highest Number of Special Requests
-- Description: This query calculates the total number of special requests made in each month and returns the month with the highest overall count.

SELECT
arrival_date_month,
SUM(total_of_special_requests) AS total_requests
FROM bookings
GROUP BY
arrival_date_month
ORDER BY
total_requests DESC
LIMIT 1