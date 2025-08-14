-- Какой тип отеля (City/Resort) чаще бронируют повторные гости?
SELECT
  hotels.hotel_type,
  COUNT(*) AS repeat_guest_bookings
FROM bookings
JOIN customers ON customers.customer_id = bookings.customer_id
JOIN hotels ON hotels.hotel_id = bookings.hotel_id
WHERE customers.is_repeated_guest = TRUE
GROUP BY hotels.hotel_type
ORDER BY repeat_guest_bookings DESC;
