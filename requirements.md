One-to-Many (1:N) Relationships:
User → Property ("hosts"): A user with role 'host' can list multiple properties

User → Booking ("makes"): A user can make multiple bookings as a guest

Property → Booking ("has"): A property can have many bookings over time

User → Review ("writes"): A user can write reviews for multiple properties

Property → Review ("receives"): A property can receive multiple reviews

User → Message (sender): A user can send many messages

User → Message (recipient): A user can receive many messages

One-to-One (1:1) Relationship:
Booking → Payment: Each booking has exactly one payment record