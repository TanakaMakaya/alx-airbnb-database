# AirBnB Database Sample Data

This directory contains SQL scripts to populate the AirBnB database with realistic sample data for testing and development purposes.

## Files
- `seed.sql`: Contains INSERT statements for all tables with sample data

## Sample Data Overview

### Users (7 users)
- **3 Guests**: John Doe, Michael Johnson, Emily Brown
- **3 Hosts**: Jane Smith, Sarah Williams, David Martinez
- **1 Admin**: Admin User

All users have bcrypt-hashed passwords (hashed version of "password123" for testing).

### Properties (5 properties)
- Cozy Downtown Apartment (New York, NY) - $150/night
- Beachfront Villa (Miami, FL) - $450/night
- Mountain Cabin Retreat (Denver, CO) - $200/night
- Urban Loft Studio (San Francisco, CA) - $120/night
- Historic Townhouse (Boston, MA) - $180/night

### Bookings (6 bookings)
- Mix of confirmed, pending, and canceled bookings
- Realistic date ranges and total prices calculated
- Multiple bookings per user and property

### Payments (4 payments)
- Only confirmed bookings have associated payments
- Various payment methods: credit_card, paypal, stripe
- Amounts match booking total prices

### Reviews (5 reviews)
- Ratings from 3 to 5 stars
- Realistic comments from guests
- Only for completed bookings

### Messages (6 messages)
- Conversation threads between guests and hosts
- Questions about availability, check-in times, amenities
- Demonstrates bidirectional messaging

## Usage

### Prerequisites
- MySQL database server installed
- Database schema created (from database-script-0x01)

### Steps to Seed the Database

