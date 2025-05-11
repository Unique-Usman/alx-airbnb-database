# Database Normalization Analysis


## Normalization Prerequisites
1. **First Normal Form (1NF)**: Eliminate duplicate columns, create separate tables for related data.
2. **Second Normal Form (2NF)**: Meet 1NF requirements and ensure all non-key attributes are fully dependent on the primary key.
3. **Third Normal Form (3NF)**: Meet 2NF requirements and ensure no transitive dependencies (where non-key attributes depend on other non-key attributes).

## Analysis of Entities

### User Entity
- **Current State**: The User entity is already in 3NF.
- **Reasoning**: 
  - Each attribute depends only on the primary key `user_id`.
  - No partial dependencies exist (would require a composite primary key).
  - No transitive dependencies exist (all attributes directly depend on `user_id`).
- **Conclusion**: No changes required.

### Property Entity
- **Current State**: The Property entity is already in 3NF.
- **Reasoning**:
  - All attributes fully depend on the primary key `property_id`.
  - The `host_id` is properly handled as a foreign key to the User table.
  - No transitive dependencies exist.
- **Conclusion**: No changes required.

### Booking Entity
- **Current State**: The Booking entity is already in 3NF.
- **Reasoning**:
  - All attributes fully depend on the primary key `booking_id`.
  - Foreign keys (`property_id`, `user_id`) properly establish relationships.
  - The `total_price` could potentially be derived from `start_date`, `end_date`, and the property's `price_per_night`, but keeping it as an attribute is justified for:
    1. Historical record (property prices may change over time)
    2. Potential discounts or special prices that differ from the standard calculation
  - No transitive dependencies exist.
- **Conclusion**: No changes required.

### Payment Entity
- **Current State**: The Payment entity is already in 3NF.
- **Reasoning**:
  - All attributes fully depend on the primary key `payment_id`.
  - The `booking_id` foreign key properly establishes the relationship.
  - No transitive dependencies exist.
- **Conclusion**: No changes required.

### Review Entity
- **Current State**: The Review entity is already in 3NF.
- **Reasoning**:
  - All attributes fully depend on the primary key `review_id`.
  - Foreign keys (`property_id`, `user_id`) properly establish relationships.
  - No transitive dependencies exist.
- **Conclusion**: No changes required.

### Message Entity
- **Current State**: The Message entity is already in 3NF.
- **Reasoning**:
  - All attributes fully depend on the primary key `message_id`.
  - Foreign keys (`sender_id`, `recipient_id`) properly establish relationships.
  - No transitive dependencies exist.
- **Conclusion**: No changes required.

## Potential Normalization Enhancement

While the current schema satisfies 3NF requirements, we could consider further normalization in certain scenarios:

### Property Location Details
If `location` in the Property table contains multiple pieces of information (address, city, state, country, zip code), we could normalize it further:

```
Property Table:
- property_id (PK)
- host_id (FK)
- name
- description
- location_id (FK) <- New foreign key
- price_per_night
- created_at
- updated_at

Location Table (New):
- location_id (PK)
- street_address
- city
- state
- country
- postal_code
- latitude
- longitude
```

However, this additional normalization is only necessary if:
1. Location data needs to be queried separately
2. Multiple properties might share the exact same address
3. There's a need to perform geographic searching or filtering

## Conclusion

The current database design already satisfies the Third Normal Form (3NF) requirements. All entities have:
- Atomic attributes (1NF)
- Full dependency on primary keys (2NF)
- No transitive dependencies (3NF)

The schema is well-structured with proper use of primary keys, foreign keys, and constraints. No significant normalization issues were identified that would require restructuring the database schema.
