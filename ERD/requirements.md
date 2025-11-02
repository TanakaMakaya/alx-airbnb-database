# Entity-Relationship Diagram for AirBnB Database

This ER diagram visualizes the main entities, their attributes, and the relationships for the AirBnB clone database.

## Entities and Attributes

- **User**
  - user_id (Primary Key)
  - first_name
  - last_name
  - email
  - password_hash
  - phone_number
  - role
  - created_at

- **Property**
  - property_id (Primary Key)
  - host_id (Foreign Key)
  - name
  - description
  - location
  - pricepernight
  - created_at
  - updated_at

- **Booking**
  - booking_id (Primary Key)
  - property_id (Foreign Key)
  - user_id (Foreign Key)
  - start_date
  - end_date
  - total_price
  - status
  - created_at

- **Payment**
  - payment_id (Primary Key)
  - booking_id (Foreign Key)
  - amount
  - payment_date
  - payment_method

- **Review**
  - review_id (Primary Key)
  - property_id (Foreign Key)
  - user_id (Foreign Key)
  - rating
  - comment
  - created_at

- **Message**
  - message_id (Primary Key)
  - sender_id (Foreign Key)
  - recipient_id (Foreign Key)
  - message_body
  - sent_at

## Relationships

- A User can host many Properties.
- A Property is hosted by one User.
- A User can make many Bookings.
- A Booking is made by one User and is for one Property.
- A Property can have many Bookings.
- Each Booking has one Payment.
- A User can write many Reviews for different Properties.
- A Property can have many Reviews.
- Users can send Messages to each other; a Message has a sender and a recipient.

## Diagram

The ER diagram file is provided as `ERD/airbnb_er_diagram.drawio`. Please open this file with draw.io to view the diagram visually.
