-- AirBnB Database Sample Data

-- Insert sample users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('550e8400-e29b-41d4-a716-446655440001', 'John', 'Doe', 'john.doe@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+1234567890', 'guest', '2024-01-15 10:00:00'),
('550e8400-e29b-41d4-a716-446655440002', 'Jane', 'Smith', 'jane.smith@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+1234567891', 'host', '2024-01-16 11:30:00'),
('550e8400-e29b-41d4-a716-446655440003', 'Michael', 'Johnson', 'michael.j@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+1234567892', 'guest', '2024-02-01 09:15:00'),
('550e8400-e29b-41d4-a716-446655440004', 'Sarah', 'Williams', 'sarah.w@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+1234567893', 'host', '2024-02-05 14:20:00'),
('550e8400-e29b-41d4-a716-446655440005', 'Admin', 'User', 'admin@airbnb.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+1234567894', 'admin', '2024-01-01 08:00:00'),
('550e8400-e29b-41d4-a716-446655440006', 'Emily', 'Brown', 'emily.b@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+1234567895', 'guest', '2024-03-10 16:45:00'),
('550e8400-e29b-41d4-a716-446655440007', 'David', 'Martinez', 'david.m@example.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', '+1234567896', 'host', '2024-03-15 12:30:00');

-- Insert sample properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002', 'Cozy Downtown Apartment', 'Beautiful 2-bedroom apartment in the heart of the city with modern amenities', 'New York, NY', 150.00, '2024-01-20 10:00:00', '2024-01-20 10:00:00'),
('650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', 'Beachfront Villa', 'Luxury 4-bedroom villa with private beach access and ocean views', 'Miami, FL', 450.00, '2024-01-25 11:30:00', '2024-01-25 11:30:00'),
('650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440004', 'Mountain Cabin Retreat', 'Rustic 3-bedroom cabin in the mountains, perfect for nature lovers', 'Denver, CO', 200.00, '2024-02-10 09:15:00', '2024-02-10 09:15:00'),
('650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440004', 'Urban Loft Studio', 'Modern studio loft in trendy neighborhood with workspace', 'San Francisco, CA', 120.00, '2024-02-15 14:20:00', '2024-02-15 14:20:00'),
('650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440007', 'Historic Townhouse', 'Charming 3-bedroom townhouse with vintage character', 'Boston, MA', 180.00, '2024-03-20 13:00:00', '2024-03-20 13:00:00');

-- Insert sample bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('750e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', '2024-06-01', '2024-06-05', 600.00, 'confirmed', '2024-05-15 10:00:00'),
('750e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440003', '2024-07-10', '2024-07-17', 3150.00, 'confirmed', '2024-06-20 11:30:00'),
('750e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440001', '2024-08-01', '2024-08-04', 600.00, 'pending', '2024-07-25 09:15:00'),
('750e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440006', '2024-09-15', '2024-09-18', 360.00, 'confirmed', '2024-08-30 14:20:00'),
('750e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440003', '2024-10-20', '2024-10-22', 300.00, 'canceled', '2024-10-01 16:45:00'),
('750e8400-e29b-41d4-a716-446655440006', '650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440006', '2024-11-05', '2024-11-10', 900.00, 'confirmed', '2024-10-15 12:30:00');

-- Insert sample payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('850e8400-e29b-41d4-a716-446655440001', '750e8400-e29b-41d4-a716-446655440001', 600.00, '2024-05-15 10:30:00', 'credit_card'),
('850e8400-e29b-41d4-a716-446655440002', '750e8400-e29b-41d4-a716-446655440002', 3150.00, '2024-06-20 12:00:00', 'stripe'),
('850e8400-e29b-41d4-a716-446655440003', '750e8400-e29b-41d4-a716-446655440004', 360.00, '2024-08-30 14:45:00', 'paypal'),
('850e8400-e29b-41d4-a716-446655440004', '750e8400-e29b-41d4-a716-446655440006', 900.00, '2024-10-15 13:00:00', 'credit_card');

-- Insert sample reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('950e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', 5, 'Amazing place! Clean, comfortable, and perfectly located. Highly recommend!', '2024-06-06 10:00:00'),
('950e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440003', 5, 'Absolutely stunning beachfront villa. The views were incredible and the host was very responsive.', '2024-07-18 11:30:00'),
('950e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440006', 4, 'Great urban loft with good workspace. Only minor issue was street noise at night.', '2024-09-19 09:15:00'),
('950e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440003', 3, 'Good location but the apartment could use some updates. Overall decent stay.', '2024-10-23 14:20:00'),
('950e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440006', 5, 'Loved the historic charm of this townhouse. Very clean and well-maintained.', '2024-11-11 16:45:00');

-- Insert sample messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('a50e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440002', 'Hi! I am interested in booking your downtown apartment. Is it available for June 1-5?', '2024-05-10 09:00:00'),
('a50e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', 'Yes, it is available! Feel free to book. Let me know if you have any questions.', '2024-05-10 10:30:00'),
('a50e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440002', 'What is the check-in time for the beachfront villa?', '2024-06-15 14:00:00'),
('a50e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440003', 'Check-in is at 3 PM and checkout is at 11 AM. Looking forward to hosting you!', '2024-06-15 15:30:00'),
('a50e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440004', 'Does the studio loft have high-speed internet? I need to work remotely.', '2024-08-25 11:00:00'),
('a50e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440006', 'Yes! We have fiber optic internet with speeds up to 1 Gbps. Perfect for remote work.', '2024-08-25 12:15:00');
