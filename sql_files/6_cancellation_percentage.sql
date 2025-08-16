-- Query: Percentage of Canceled Bookings
-- Description: This query calculates the percentage of bookings that were canceled by dividing the number of canceled bookings by the total number of bookings and rounding the result to two decimal places.

SELECT 
  ROUND(
    100.0 * (SELECT COUNT(*) FROM bookings WHERE is_canceled = TRUE) / 
    COUNT(*), 
    2
  ) AS cancellation_percent
FROM bookings;