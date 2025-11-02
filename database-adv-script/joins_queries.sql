-- 1.1 INNER JOIN: Bookings and respective users
SELECT
    Booking.booking_id,
    Booking.property_id,
    Booking.start_date,
    Booking.end_date,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM
    Booking
INNER JOIN
    User ON Booking.user_id = User.user_id;

-- 1.2 LEFT JOIN: All properties and their reviews (include properties without reviews)
SELECT
    Property.property_id,
    Property.name,
    Property.location,
    Review.review_id,
    Review.rating,
    Review.comment
FROM
    Property
LEFT JOIN
    Review ON Property.property_id = Review.property_id;

-- 1.3 FULL OUTER JOIN: All users and all bookings (even if user has no booking or booking is not linked to a user)
SELECT
    User.user_id,
    User.first_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date
FROM
    User
FULL OUTER JOIN
    Booking ON User.user_id = Booking.user_id;
