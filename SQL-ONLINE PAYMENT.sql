create database payment;
use payment;
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

select *
from Register;

select *
from booking;


select *
from payment;

