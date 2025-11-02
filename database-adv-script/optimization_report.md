# Query Optimization Report

## Initial Query
- Included joins on Booking, User, Property, Payment.

## Performance Analysis
- EXPLAIN revealed full table scans for User and Property before indexing.

## Optimization Steps
- Added indexes on Booking.user_id, Booking.property_id, Payment.booking_id.
- Limited returned columns to essentials.
- Used LEFT JOIN only for Payment (since some bookings may not have payments).

## Optimized Performance
- Subsequent EXPLAIN shows index range scans, reduced cost, and less rows examined.
- Query execution time improved substantially on larger datasets.
