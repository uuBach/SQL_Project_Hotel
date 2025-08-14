-- Какая комбинация ‘reserved_room_type’ и ‘assigned_room_type’ встречается чаще всего?

SELECT 
reserved_room_type,
assigned_room_type,
COUNT(*) AS total_number
FROM bookings
GROUP BY
reserved_room_type, assigned_room_type
ORDER BY
total_number DESC