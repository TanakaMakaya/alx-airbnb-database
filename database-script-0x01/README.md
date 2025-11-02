# AirBnB Database Schema

This directory contains the SQL DDL scripts to create the AirBnB database schema.

## Files
- `schema.sql`: Contains all CREATE TABLE statements with constraints and indexes.

## Database Design

### Entities
1. **User**: Stores user information (guests, hosts, admins)
2. **Property**: Stores property listings hosted by users
3. **Booking**: Stores booking information linking users and properties
4. **Payment**: Stores payment details for each booking
5. **Review**: Stores reviews written by users for properties
6. **Message**: Stores messages exchanged between users

### Constraints
- **Primary Keys**: Each table has a UUID primary key
- **Foreign Keys**: Ensure referential integrity between related tables
  - Property.host_id → User.user_id
  - Booking.property_id → Property.property_id
  - Booking.user_id → User.user_id
  - Payment.booking_id → Booking.booking_id
  - Review.property_id → Property.property_id
  - Review.user_id → User.user_id
  - Message.sender_id → User.user_id
  - Message.recipient_id → User.user_id
- **ON DELETE CASCADE**: Automatically removes related records when a parent record is deleted
- **Unique Constraints**: User.email must be unique
- **Check Constraints**: Review.rating must be between 1 and 5
- **NOT NULL Constraints**: Applied to essential fields

### Indexes
Indexes are created on:
- Primary keys (automatic)
- Foreign keys (for join performance)
- User.email (for login queries)
- Property.property_id and Booking.property_id (frequently queried)
- Booking.booking_id (for payment lookups)

### Data Types
- **CHAR(36)**: Used for UUID primary and foreign keys
- **VARCHAR**: For text fields with length limits
- **TEXT**: For longer text content (descriptions, comments, messages)
- **DECIMAL(10, 2)**: For monetary values
- **DATE**: For booking dates
- **TIMESTAMP**: For tracking creation and update times
- **ENUM**: For fields with predefined allowed values (role, status, payment_method)

## Usage

To create the database schema:

