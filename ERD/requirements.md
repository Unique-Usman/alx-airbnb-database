# Entity-Relationship Diagram Requirements

## Entities and Attributes

### User
- **user_id**: Primary Key, UUID, Indexed
- **first_name**: VARCHAR, NOT NULL
- **last_name**: VARCHAR, NOT NULL
- **email**: VARCHAR, UNIQUE, NOT NULL
- **password_hash**: VARCHAR, NOT NULL
- **phone_number**: VARCHAR, NULL
- **role**: ENUM (`guest`, `host`, `admin`), NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### Property
- **property_id**: Primary Key, UUID, Indexed
- **host_id**: Foreign Key, references `User(user_id)`
- **name**: VARCHAR, NOT NULL
- **description**: TEXT, NOT NULL
- **location**: VARCHAR, NOT NULL
- **price_per_night**: DECIMAL, NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- **updated_at**: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP

### Booking
- **booking_id**: Primary Key, UUID, Indexed
- **property_id**: Foreign Key, references `Property(property_id)`
- **user_id**: Foreign Key, references `User(user_id)`
- **start_date**: DATE, NOT NULL
- **end_date**: DATE, NOT NULL
- **total_price**: DECIMAL, NOT NULL
- **status**: ENUM (`pending`, `confirmed`, `canceled`), NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### Payment
- **payment_id**: Primary Key, UUID, Indexed
- **booking_id**: Foreign Key, references `Booking(booking_id)`
- **amount**: DECIMAL, NOT NULL
- **payment_date**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- **payment_method**: ENUM (`credit_card`, `paypal`, `stripe`), NOT NULL

### Review
- **review_id**: Primary Key, UUID, Indexed
- **property_id**: Foreign Key, references `Property(property_id)`
- **user_id**: Foreign Key, references `User(user_id)`
- **rating**: INTEGER, CHECK: `rating >= 1 AND rating <= 5`, NOT NULL
- **comment**: TEXT, NOT NULL
- **created_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

### Message
- **message_id**: Primary Key, UUID, Indexed
- **sender_id**: Foreign Key, references `User(user_id)`
- **recipient_id**: Foreign Key, references `User(user_id)`
- **message_body**: TEXT, NOT NULL
- **sent_at**: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

## Relationships

1. **User to Property**: One-to-Many (A user can host multiple properties)
2. **User to Booking**: One-to-Many (A user can make multiple bookings)
3. **Property to Booking**: One-to-Many (A property can have multiple bookings)
4. **Booking to Payment**: One-to-Many (A booking can have multiple payments)
5. **User to Review**: One-to-Many (A user can write multiple reviews)
6. **Property to Review**: One-to-Many (A property can receive multiple reviews)
7. **User to Message (as sender)**: One-to-Many (A user can send multiple messages)
8. **User to Message (as recipient)**: One-to-Many (A user can receive multiple messages)

## Constraints

### User Table
- Unique constraint on `email`
- Non-null constraints on required fields

### Property Table
- Foreign key constraint on `host_id`
- Non-null constraints on essential attributes

### Booking Table
- Foreign key constraints on `property_id` and `user_id`
- `status` must be one of `pending`, `confirmed`, or `canceled`

### Payment Table
- Foreign key constraint on `booking_id`, ensuring payment is linked to valid bookings

### Review Table
- Constraints on `rating` values (1-5)
- Foreign key constraints on `property_id` and `user_id`

### Message Table
- Foreign key constraints on `sender_id` and `recipient_id`

## Indexing
- **Primary Keys**: Indexed automatically
- **Additional Indexes**:
  - `email` in the **User** table
  - `property_id` in the **Property** and **Booking** tables
  - `booking_id` in the **Booking** and **Payment** tables

## ER Diagram Guidelines
The ER diagram should:
- Clearly display all entities with their attributes
- Show primary keys and foreign keys
- Indicate relationships between entities with proper cardinality notation
- Include all constraints and data types
- Be visually organized and easy to understand

The diagram has been created using an appropriate diagramming tool and is available in the repository.
