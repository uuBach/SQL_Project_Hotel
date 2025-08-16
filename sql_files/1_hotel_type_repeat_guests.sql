-- Query: Hotel Type Most Frequently Booked by Repeat Guests
-- Description: This query identifies which type of hotel (City or Resort) is most frequently booked by repeat guests by counting their bookings and ordering them in descending order.

SELECT
  hotels.hotel_type,
  COUNT(*) AS repeat_guest_bookings
FROM bookings
JOIN customers ON customers.customer_id = bookings.customer_id
JOIN hotels ON hotels.hotel_id = bookings.hotel_id
WHERE customers.is_repeated_guest = TRUE
GROUP BY hotels.hotel_type
ORDER BY repeat_guest_bookings DESC;
