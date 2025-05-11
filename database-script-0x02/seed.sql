-- ALX Airbnb Clone Database Seed Data
-- This script populates the database with sample data for development and testing

USE alx_airbnb;

-- Disable foreign key checks temporarily to allow for easier data loading
SET FOREIGN_KEY_CHECKS = 0;

-- Clear existing data
TRUNCATE TABLE message;
TRUNCATE TABLE review;
TRUNCATE TABLE payment;
TRUNCATE TABLE booking;
TRUNCATE TABLE property;
TRUNCATE TABLE user;

-- Re-enable foreign key checks
SET FOREIGN_KEY_CHECKS = 1;

-- Insert sample user data
-- Note: These are example bcrypt password hashes (all representing 'password123')
INSERT INTO user (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'John', 'Doe', 'john.doe@example.com', '$2a$12$1zGLgj7NB8YUbXwo5S5vie2QpG5S5J2IVbN4Yt5U.qwW4a5m2kp7i', '+1234567890', 'guest', '2024-01-01 10:00:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Jane', 'Smith', 'jane.smith@example.com', '$2a$12$1zGLgj7NB8YUbXwo5S5vie2QpG5S5J2IVbN4Yt5U.qwW4a5m2kp7i', '+1234567891', 'host', '2024-01-02 11:15:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Michael', 'Johnson', 'michael.johnson@example.com', '$2a$12$1zGLgj7NB8YUbXwo5S5vie2QpG5S5J2IVbN4Yt5U.qwW4a5m2kp7i', '+1234567892', 'host', '2024-01-03 09:30:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Emily', 'Williams', 'emily.williams@example.com', '$2a$12$1zGLgj7NB8YUbXwo5S5vie2QpG5S5J2IVbN4Yt5U.qwW4a5m2kp7i', '+1234567893', 'guest', '2024-01-04 14:45:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'William', 'Brown', 'william.brown@example.com', '$2a$12$1zGLgj7NB8YUbXwo5S5vie2QpG5S5J2IVbN4Yt5U.qwW4a5m2kp7i', '+1234567894', 'guest', '2024-01-05 16:20:00'),
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Admin', 'User', 'admin@alxairbnb.com', '$2a$12$1zGLgj7NB8YUbXwo5S5vie2QpG5S5J2IVbN4Yt5U.qwW4a5m2kp7i', '+1234567895', 'admin', '2024-01-01 00:00:00');

-- Insert sample property data
INSERT INTO property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at) VALUES
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Modern Downtown Apartment', 'A beautiful modern apartment in the heart of downtown with amazing city views.', 'New York, NY', 150.00, '2024-01-10 09:00:00', '2024-01-15 14:30:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Cozy Beach House', 'Relax in this comfortable beach house just steps away from the ocean.', 'Miami Beach, FL', 200.00, '2024-01-12 10:30:00', '2024-01-16 11:45:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Mountain Retreat Cabin', 'Escape to this peaceful cabin surrounded by nature and mountain views.', 'Aspen, CO', 175.00, '2024-01-14 11:15:00', '2024-01-17 16:20:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Luxury Loft', 'Experience luxury in this spacious loft with high-end amenities.', 'San Francisco, CA', 225.00, '2024-01-16 13:45:00', '2024-01-18 09:10:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Charming Countryside Cottage', 'Enjoy the tranquility of the countryside in this charming vintage cottage.', 'Burlington, VT', 125.00, '2024-01-18 15:30:00', '2024-01-20 10:45:00');

-- Insert sample booking data
INSERT INTO booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c11', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', '2024-02-01', '2024-02-05', 600.00, 'confirmed', '2024-01-20 09:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c12', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '2024-02-10', '2024-02-15', 1000.00, 'confirmed', '2024-01-22 11:45:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c13', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', '2024-02-20', '2024-02-23', 525.00, 'pending', '2024-01-24 14:20:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c14', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', '2024-03-05', '2024-03-10', 1125.00, 'canceled', '2024-01-26 16:10:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c15', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '2024-03-15', '2024-03-20', 625.00, 'confirmed', '2024-01-28 10:05:00');

-- Insert sample payment data
INSERT INTO payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380d11', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c11', 600.00, '2024-01-20 10:15:00', 'credit_card'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380d12', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c12', 500.00, '2024-01-22 12:30:00', 'paypal'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380d13', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c12', 500.00, '2024-01-23 09:45:00', 'paypal'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380d14', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c14', 1125.00, '2024-01-26 17:20:00', 'stripe'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380d15', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380c15', 625.00, '2024-01-28 11:30:00', 'credit_card');

-- Insert sample review data
INSERT INTO review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380e11', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 5, 'Absolutely amazing apartment with a stunning view! The host was very accommodating and the location was perfect for exploring the city.', '2024-02-06 12:30:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380e12', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 4, 'Beautiful beach house with great access to the ocean. The only reason I\'m not giving 5 stars is because the AC was a bit noisy.', '2024-02-16 15:45:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380e13', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 5, 'Perfect mountain getaway! The cabin was cozy, clean, and had everything we needed. The views were breathtaking.', '2024-01-15 09:20:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380e14', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 3, 'The loft was nice but overpriced for what it offered. The location was good, but there were issues with the plumbing.', '2024-01-28 14:10:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380e15', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380b15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 5, 'The cottage exceeded our expectations! It was charming, quiet, and the perfect place to disconnect from the busy city life.', '2024-03-21 11:30:00');

-- Insert sample message data
INSERT INTO message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380f11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Hi Jane, I\'m interested in booking your Downtown Apartment. Is it available for the first week of February?', '2024-01-18 10:30:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380f12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Hello John! Yes, the apartment is available for those dates. Would you like me to send you more information?', '2024-01-18 11:15:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380f13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Hi Michael, does your Mountain Retreat Cabin have WiFi? I need to do some work while I\'m there.', '2024-01-22 14:45:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380f14', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Hello Emily, yes we do have high-speed WiFi and a comfortable workspace in the cabin.', '2024-01-22 15:30:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380f15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Hi Jane, I noticed you have a Countryside Cottage listed. Is it pet-friendly? I\'d like to bring my small dog.', '2024-01-25 09:10:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380f16', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'Hello William, yes our cottage is pet-friendly! Small dogs are absolutely welcome, and there\'s a fenced yard.', '2024-01-25 10:05:00');

-- Verify the data was loaded correctly
SELECT 'Users:' AS 'Table', COUNT(*) AS 'Row Count' FROM user
UNION ALL
SELECT 'Properties:', COUNT(*) FROM property
UNION ALL
SELECT 'Bookings:', COUNT(*) FROM booking
UNION ALL
SELECT 'Payments:', COUNT(*) FROM payment
UNION ALL
SELECT 'Reviews:', COUNT(*) FROM review
UNION ALL
SELECT 'Messages:', COUNT(*) FROM message;
