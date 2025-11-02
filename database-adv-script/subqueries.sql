-- 2.1 Properties where average rating > 4.0 (non-correlated subquery)
SELECT
    Property.property_id,
    Property.name,
    Property.location
FROM
    Property
WHERE
    (SELECT AVG(rating)
     FROM Review
     WHERE Review.property_id = Property.property_id) > 4.0;

-- 2.2 Users who have made more than 3 bookings (correlated subquery)
SELECT
    User.user_id,
    User.first_name,
    User.last_name
FROM
    User
WHERE
    (SELECT COUNT(*)
     FROM Booking
     WHERE Booking.user_id = User.user_id) > 3;
