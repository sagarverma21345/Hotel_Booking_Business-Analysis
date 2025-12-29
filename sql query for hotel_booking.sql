-- Q1. Which booking channel has the most bookings
SELECT booking_channel, COUNT(*) AS total_bookings
FROM hotel_booking
GROUP BY booking_channel
ORDER BY total_bookings DESC;

-- Q2. Which booking channel has the highest cancellations
SELECT booking_channel, COUNT(*) AS cancelled_bookings
FROM hotel_booking
WHERE booking_status = 'Cancelled'
GROUP BY booking_channel
ORDER BY cancelled_bookings DESC;

-- Q3. Cancellation rate by booking 
SELECT booking_channel,
       COUNT(CASE WHEN booking_status = 'Cancelled' THEN 1 END) * 1.0 / COUNT(*) AS cancellation_rate
FROM hotel_booking
GROUP BY booking_channel;

-- Q4. Which room type is booked the most
SELECT room_type, COUNT(*) AS total_bookings
FROM hotel_booking
GROUP BY room_type
ORDER BY total_bookings DESC;

-- Q5. Which room type cancels more
SELECT room_type, COUNT(*) AS cancelled_bookings
FROM hotel_booking
WHERE booking_status = 'Cancelled'
GROUP BY room_type;

-- Q6. Bookings by star rating
SELECT star_rating, COUNT(*) AS total_bookings
FROM hotel_booking
GROUP BY star_rating
ORDER BY star_rating;

-- Q7. Cancellation rate by star rating
SELECT star_rating,
       COUNT(CASE WHEN booking_status = 'Cancelled' THEN 1 END) * 1.0 / COUNT(*) AS cancellation_rate
FROM hotel_booking
GROUP BY star_rating;

-- Q8. Monthly booking trend When people book more
SELECT EXTRACT(MONTH FROM booking_date) AS month,
       COUNT(*) AS total_bookings
FROM hotel_booking
GROUP BY month
ORDER BY month;

-- Q9. Average booking value by channel
SELECT booking_channel, AVG(booking_value) AS avg_booking_value
FROM hotel_booking
GROUP BY booking_channel;

-- Q10. Average length of stay by star rating
SELECT star_rating, AVG(length_of_stay) AS avg_stay
FROM hotel_booking
GROUP BY star_rating;









