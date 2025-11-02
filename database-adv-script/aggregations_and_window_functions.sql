-- 3.1 Total number of bookings made by each user
SELECT
    User.user_id,
    User.first_name,
    User.last_name,
    COUNT(Booking.booking_id) AS total_bookings
FROM
    User
LEFT JOIN
    Booking ON User.user_id = Booking.user_id
GROUP BY
    User.user_id, User.first_name, User.last_name;

-- 3.2 Rank properties based on total bookings using window function
SELECT
    property_id,
    name,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS property_rank
FROM (
    SELECT
        Property.property_id,
        Property.name,
        COUNT(Booking.booking_id) AS total_bookings
    FROM
        Property
    LEFT JOIN
        Booking ON Property.property_id = Booking.property_id
    GROUP BY
        Property.property_id, Property.name
) AS property_counts;
