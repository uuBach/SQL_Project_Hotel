-- Сколько % бронирований в итоге отменяются?

SELECT 
  ROUND(
    100.0 * (SELECT COUNT(*) FROM bookings WHERE is_canceled = TRUE) / 
    COUNT(*), 
    2
  ) AS cancellation_percent
FROM bookings;