# Online_payment
This repository contains an SQL script designed to create a payment and booking system database. The database includes entities such as user registration, booking information, and payment details, helping to manage user registrations, travel bookings, and payments securely.
The database consists of the following tables:

1. **Register**: Stores user registration details, including username, password, address, phone number, and email.
2. **Booking**: Stores travel booking details such as cabin type, travel dates, and the number of travelers.
3. **Payment**: Stores payment card details, including card number, card type, expiry date, CVV number, and the cardholder's name.

### Relationships

Each table is independent, with the potential for future expansion by linking `Register` (users) to `Booking` (bookings) and `Payment` (payments) to provide a full-fledged system.

### Table Definitions

1. **Register**:
   - `UserID`: Unique identifier for each user (Primary Key).
   - `Username`: The name of the user.
   - `UserPassword`: Password for authentication (hashed for security).
   - `Address`: User's address.
   - `Email`: User's email address.
   - `Phoneno`: User's phone number.

2. **Booking**:
   - `BookingID`: Unique identifier for each booking (Primary Key).
   - `Cabin`: The class of travel (e.g., Economy, Business, First Class).
   - `OneWay`: Departure date for one-way travel.
   - `Travelreturn`: Return date for round trips (if applicable).
   - `Travelers`: Number of travelers for the booking.

3. **Payment**:
   - `CardNo`: The card number (Primary Key).
   - `CardType`: The type of card (e.g., Visa, MasterCard, American Express).
   - `ExpiryDate`: Expiry date of the card.
   - `CVVNo`: Card Verification Value for security.
   - `CardholderName`: The name of the cardholder as printed on the card.

### SQL Queries

The script includes SQL queries for creating the tables, inserting data, and selecting data for viewing.

#### Create Tables
```sql
CREATE TABLE Register (
    UserID INT PRIMARY KEY,
    Username VARCHAR(25),
    UserPassword VARCHAR(30),
    Address VARCHAR(255),
    Email VARCHAR(50),
    Phoneno VARCHAR(15)
);

CREATE TABLE Booking (
    BookingID INT PRIMARY KEY,
    Cabin VARCHAR(50),
    OneWay DATE,
    Travelreturn DATE,
    Travelers INT
);

CREATE TABLE Payment (
    CardNo VARCHAR(20) PRIMARY KEY,
    CardType VARCHAR(50),
    ExpiryDate DATE,
    CVVNo VARCHAR(4),
    Cardholdername VARCHAR(100)
);

INSERT INTO Register (UserID, Username, Address, Phoneno, Email, UserPassword)
VALUES
    (1, 'Jawahar', '123 Nehru Street, Tamilnadu', '1234567890', 'Jawahar@example.com', 'hashed_password1'),
    (2, 'smitha', '456 Oak Avenue, Karnataka', '0987654321', 'smitha@example.com', 'hashed_password2'),
    (3, 'Jim', '789 Maple Road, Kerala', '1122334455', 'Jim@example.com', 'hashed_password3');

INSERT INTO Booking (BookingID, Cabin, OneWay, Travelreturn, Travelers)
VALUES
    (101, 'Economy', '2024-09-15', '2024-09-22', 2),
    (102, 'Business', '2024-10-01', NULL, 1),
    (103, 'First Class', '2024-11-05', '2024-11-12', 4);

INSERT INTO Payment (CardNo, CardType, ExpiryDate, CVVNo, CardholderName)
VALUES 
    ('4548932547862711', 'Visa', '2025-12-01', '123', 'Jawahar'),
    ('5595863214750014', 'MasterCard', '2026-06-01', '456', 'Smitha'),
    ('3489624713058909', 'American Express', '2027-03-01', '789', 'Jim');
-- Retrieve all registered users
SELECT * FROM Register;

-- Retrieve all bookings
SELECT * FROM Booking;

-- Retrieve all payment details
SELECT * FROM Payment;
