-- perfomance.sql

SELECT
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    User.first_name,
    User.last_name,
    Property.name AS property_name,
    Property.location,
    Payment.amount,
    Payment.payment_method
FROM
    Booking
JOIN User ON Booking.user_id = User.user_id
JOIN Property ON Booking.property_id = Property.property_id
LEFT JOIN Payment ON Booking.booking_id = Payment.booking_id;
