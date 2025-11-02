# Partitioning Performance Report

## Implementation
- Booking table partitioned by YEAR(start_date).

## Performance Before Partitioning
- EXPLAIN shows entire table scan for bookings by date range.

## Performance After Partitioning
- Only relevant partitions scanned.
- Faster query, reduced IO for large tables.

**Conclusion:** Partitioning greatly improves date-based queries on Booking without impacting inserts or referential integrity.
