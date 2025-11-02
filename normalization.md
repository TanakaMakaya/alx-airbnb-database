# AirBnB Database Normalization

## 1. First Normal Form (1NF)
- All tables have unique primary keys (user_id, property_id, etc.).
- Each field contains atomic values. No repeating groups.

## 2. Second Normal Form (2NF)
- All non-key attributes are fully functionally dependent on their entity's primary key.
- No partial dependencies exist (for example, no field in Booking is dependent only on user_id or property_id; all are dependent on booking_id).

## 3. Third Normal Form (3NF)
- No transitive dependencies exist.
- Example: In the User table, all columns (first_name, last_name, email, etc.) depend only on user_id.
- Foreign keys link tables but don't introduce redundancy or computed fields.
- Property entity refers to host_id (no redundant host details in Property).
- Payment references booking_id, no unnecessary user or property details.
- Review and Message tables are properly linked, no duplicative information.

## Changes/Clarifications
- No derived or calculated fields in any table.
- ENUMs (role, status, payment_method) are used for allowed values—could be split to lookup tables if needed.
- All fields are atomic and only store a single value.
- No violation of normalization detected.
