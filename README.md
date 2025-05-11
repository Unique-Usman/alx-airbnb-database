# ALX Airbnb Database Project

## Overview
This repository contains the database design and implementation for an Airbnb-like accommodation booking system.

## Structure
- **ERD/**: Entity Relationship Diagram and requirements documentation
- **database-script-0x01/**: Database schema creation scripts
- **database-script-0x02/**: Sample data for testing and development

## Features
- User management (guests, hosts, admins)
- Property listings
- Booking system
- Payment processing
- Review system
- Messaging between users

## Quick Start
1. Create the database schema:
   ```
   mysql -u username -p < database-script-0x01/schema.sql
   ```
2. Populate with sample data:
   ```
   mysql -u username -p < database-script-0x02/seed.sql
   ```

## Technical Details
- Normalized to 3NF
- Proper indexing for performance
- Comprehensive referential integrity
- Complete with sample data

## Author
Usman Akinyemi
