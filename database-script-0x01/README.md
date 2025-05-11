# Database Seed Data for ALX Airbnb Clone

## Overview
This directory contains the SQL script (`seed.sql`) to populate the ALX Airbnb Clone database with sample data. The seed data provides realistic examples for all tables in the database, making it useful for development, testing, and demonstration purposes.

## Sample Data Contents

The seed script populates the following entities with realistic sample data:

### User Data
- Multiple users with different roles (guest, host, admin)
- Various names, emails, and phone numbers
- Properly hashed passwords (using bcrypt algorithm representation)

### Property Data
- Multiple properties with different hosts
- Varied locations, prices, and descriptions
- Different creation dates to simulate a timeline of property listings

### Booking Data
- Multiple bookings across different properties
- Various statuses (pending, confirmed, canceled)
- Different date ranges and total prices

### Payment Data
- Payments linked to bookings
- Different payment methods (credit card, PayPal, Stripe)
- Realistic payment amounts

### Review Data
- Reviews for various properties
- Different ratings (1-5) and detailed comments
- Reviews from different users

### Message Data
- Communications between users
- Messages related to bookings and inquiries
- Various timestamps to simulate conversations

## How to Use

### Prerequisites
- MySQL 5.7 or higher
- Database schema already created using the script from `database-script-0x01`

### Setup Instructions
1. Ensure MySQL server is running
2. Make sure the database schema has been created first
3. Load the seed data:
   ```
   mysql -u username -p alx_airbnb < seed.sql
   ```
   or, if already logged into MySQL:
   ```
   USE alx_airbnb;
   source /path/to/seed.sql
   ```

## Data Generation Strategy

### UUIDs
- All UUIDs in the seed file are pre-generated to ensure consistency
- UUIDs follow the standard format and maintain referential integrity

### Relationships
- All foreign key relationships are maintained
- Data is inserted in the correct order to avoid constraint violations

### Data Variety
- Sufficient variety in the data to demonstrate different scenarios
- Realistic names, locations, and descriptions
- Varying timestamps to show a history of activity

## Notes
- The seed data is for development and testing purposes only
- In a production environment, real user data would be collected through application usage
- The sample passwords are hashed but should never be used in a production environment
- You can modify the seed script to add more data as needed for specific testing scenarios
