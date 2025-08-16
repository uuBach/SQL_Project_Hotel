-- Query: Most Frequent Reserved vs. Assigned Room Type Combination
-- Description: This query identifies which combination of reserved room type and assigned room type occurs most often by grouping bookings by both fields and ordering the results in descending order of frequency.

SELECT 
reserved_room_type,
assigned_room_type,
COUNT(*) AS total_number
FROM bookings
GROUP BY
reserved_room_type, assigned_room_type
ORDER BY
total_number DESC